// lib/api/perplexity_streaming_api.dart
//
// Класс ниже инкапсулирует работу с Perplexity Chat Completions API.
// Он предоставляет три способа общения:
// 1) sendMessageStreamSSE — рекомендуемый для Perplexity способ стриминга через SSE
// 2) sendMessageStreamWebSocket — пример для WebSocket (оставлен как шаблон)
// 3) sendMessage — обычный запрос без стриминга
//
// ВАЖНО: мы формируем тело запроса вручную в snake_case и отправляем только
// поддерживаемые полями API значения. Это снижает риск 400-ошибок
// из‑за несовместимости модели данных домена и транспортного формата.
import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/models/response/response_models.dart';

/// Клиент Perplexity Streaming API.
class PerplexityStreamingApi {
  final Dio _dio;
  final String _apiKey;
  WebSocketChannel? _channel;

  PerplexityStreamingApi({required String apiKey, Dio? dio})
      : _apiKey = apiKey,
        _dio = dio ?? Dio() {
    _dio.options.baseUrl = 'https://api.perplexity.ai';
    _dio.options.headers['Authorization'] = 'Bearer $_apiKey';
    _dio.options.headers['Content-Type'] = 'application/json';
  }

  /// Собирает тело запроса для chat/completions из доменной модели ChatRequest
  /// с нужными полями и snake_case.
  Map<String, dynamic> _buildRequestBodyFromRequest(ChatRequest request) {
    return {
      'model': request.model,
      'messages': request.messages
          .map((m) => {
                'role': m.role,
                'content': m.content,
              })
          .toList(),
      'stream': request.stream,
      // При необходимости добавляем поддерживаемые параметры здесь в snake_case
      // 'temperature': request.temperature,
      // 'top_p': request.topP,
      // 'max_tokens': request.maxTokens,
    };
  }

  /// SSE стриминг через Dio (основной метод для Perplexity)
  ///
  /// На выходе — поток текстовых чанков, которые UI может рендерить по мере прихода.
  Stream<String> sendMessageStreamSSERequest({
    required ChatRequest request,
  }) async* {
    // Формируем минимальный payload с корректными snake_case ключами
    final requestBody = _buildRequestBodyFromRequest(request);

    try {
      final response = await _dio.post(
        '/chat/completions',
        data: requestBody,
        options: Options(
          responseType: ResponseType.stream,
          headers: {
            'Accept': 'text/event-stream',
            'Cache-Control': 'no-cache',
          },
        ),
      );

      final stream = response.data.stream as Stream<List<int>>;
      String buffer = '';

      await for (final chunk in stream) {
        buffer += utf8.decode(chunk);
        final lines = buffer.split('\n');
        buffer = lines.removeLast();

        for (String line in lines) {
          if (line.startsWith('data: ')) {
            final data = line.substring(6).trim();
            if (data == '[DONE]') return;
            
            try {
              final json = jsonDecode(data);
              final content = json['choices']?[0]?['delta']?['content'];
              if (content != null) {
                yield content as String;
              }
            } catch (e) {
              // Игнорируем ошибки парсинга
            }
          }
        }
      }
    } catch (e) {
      if (e is DioException) {
        final status = e.response?.statusCode;
        final body = e.response?.data;
        throw Exception('SSE Streaming error: status=$status, body=${body is String ? body : jsonEncode(body)}');
      }
      throw Exception('SSE Streaming error: $e');
    }
  }

  /// Пример WebSocket стриминга (для API, где есть WS-протокол).
  /// Для Perplexity рекомендуется использовать именно SSE-метод выше.
  Stream<String> sendMessageStreamWebSocket({
    required ChatRequest request,
  }) async* {
    // Этот метод можно использовать для других API, которые поддерживают WebSocket
    // Для Perplexity используй sendMessageStreamSSE
    
    try {
      // Пример подключения к WebSocket (не для Perplexity)
      final wsUrl = Uri.parse('wss://your-websocket-api.com/stream');
      _channel = WebSocketChannel.connect(wsUrl);
      
      // Отправляем запрос через WebSocket
      final requestBody = _buildRequestBodyFromRequest(request);
      
      _channel!.sink.add(jsonEncode(requestBody));
      
      // Слушаем ответы
      await for (final message in _channel!.stream) {
        try {
          final data = jsonDecode(message);
          final content = data['content'];
          if (content != null) {
            yield content as String;
          }
        } catch (e) {
          // Обработка ошибок
        }
      }
    } catch (e) {
      throw Exception('WebSocket error: $e');
    }
  }

  /// Обычный HTTP запрос (без стриминга)
  /// Возвращает весь ответ сразу — удобно для fallback'а или простых сценариев.
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    // Собираем тело запроса вручную, используя только поддерживаемые поля
    final requestBody = _buildRequestBodyFromRequest(request.copyWith(stream: false));

    final response = await _dio.post(
      '/chat/completions',
      data: requestBody,
    );
    return ChatResponse.fromJson(response.data);
  }

  void dispose() {
    _channel?.sink.close();
  }
}
