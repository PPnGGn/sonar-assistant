// lib/api/repositories/chat_repository.dart
import 'package:dio/dio.dart';
import 'package:sonar_assistant/api/api.dart';

import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/models/response/response_models.dart';

class ChatRepository {
  final PerplexityStreamingApi _api;
  final String apiKey;

  ChatRepository({required this.apiKey, Dio? dio}) 
      : _api = PerplexityStreamingApi(apiKey: apiKey, dio: dio);

  // Стриминговый метод с использованием SSE (формируем ChatRequest и передаем в API)
  Stream<String> sendMessageStream(List<MessageRequest> messages) {
    final request = ChatRequest(
      messages: messages,
      stream: true,
    );
    return _api.sendMessageStreamSSERequest(request: request);
  }

  // Обычный HTTP запрос
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    return _api.sendMessage(request.copyWith(stream: false));
  }

  void dispose() {
    _api.dispose();
  }
}
