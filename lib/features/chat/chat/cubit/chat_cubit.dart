// lib/features/chat/chat/cubit/chat_cubit.dart
import 'dart:async';
import 'dart:developer' as developer;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/repositories/chat_repository.dart';

part 'chat_cubit.freezed.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository _repository;
  StreamSubscription<String>? _streamSubscription;
  static const int _maxMessages = 20;

  ChatCubit(this._repository) : super(const ChatState.initial());

  /// Отправка сообщения со стримингом
  Future<void> sendMessageWithStreaming(String text) async {
    try {
      // Добавляем сообщение пользователя
      final userMessage = MessageRequest(role: 'user', content: text);
      final currentMessages = [...state.messages, userMessage];
      
      emit(ChatState.loading(messages: currentMessages));

      String accumulatedResponse = '';
      
      // Отменяем предыдущую подписку если есть
      _streamSubscription?.cancel();

      // Подписываемся на стрим
      _streamSubscription = _repository.sendMessageStream(currentMessages).listen(
        (chunk) {
          accumulatedResponse += chunk;
          emit(ChatState.streaming(
            messages: currentMessages,
            streamingContent: accumulatedResponse,
          ));
        },
        onDone: () {
          // Добавляем финальный ответ ассистента
          final assistantMessage = MessageRequest(
            role: 'assistant', 
            content: accumulatedResponse,
          );
          
          final finalMessages = [...currentMessages, assistantMessage];
          _trimMessages(finalMessages);
          
          emit(ChatState.success(messages: finalMessages));
        },
        onError: (error) {
          _handleError('Streaming error: $error', StackTrace.current, currentMessages);
        },
      );
    } catch (e, stackTrace) {
      _handleError('Ошибка при отправке сообщения: $e', stackTrace, state.messages);
    }
  }

  /// Отправка обычного сообщения (без стриминга)
  Future<void> sendMessage(String text) async {
    try {
      final userMessage = MessageRequest(role: 'user', content: text);
      final currentMessages = [...state.messages, userMessage];
      
      emit(ChatState.loading(messages: currentMessages));

      final request = ChatRequest(
        messages: currentMessages,
        stream: false,
      );

      final response = await _repository.sendMessage(request);

      if (response.choices.isNotEmpty) {
        final content = response.choices.first.message.content;
        if (content.isNotEmpty) {
          final assistantMessage = MessageRequest(role: 'assistant', content: content);
          final finalMessages = [...currentMessages, assistantMessage];
          _trimMessages(finalMessages);
          
          emit(ChatState.success(messages: finalMessages));
        } else {
          throw Exception('Получен пустой ответ от сервера');
        }
      } else {
        throw Exception('Некорректный формат ответа от сервера');
      }
    } catch (e, stackTrace) {
      _handleError('Ошибка при отправке сообщения: $e', stackTrace, state.messages);
    }
  }

  /// Очистка истории сообщений
  void clearHistory() {
    _streamSubscription?.cancel();
    emit(const ChatState.initial(messages: []));
  }

  /// Ограничение размера истории сообщений
  void _trimMessages(List<MessageRequest> messages) {
    if (messages.length > _maxMessages) {
      messages.removeRange(0, messages.length - _maxMessages);
    }
  }

  /// Обработка ошибок
  void _handleError(String message, StackTrace stackTrace, List<MessageRequest> messages) {
    developer.log(message, error: message, stackTrace: stackTrace);
    emit(ChatState.error(message, messages: messages));
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _repository.dispose();
    return super.close();
  }
}
