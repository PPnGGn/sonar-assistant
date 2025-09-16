import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/repositories/chat_repository.dart';

part 'chat_cubit.freezed.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository _repository;
  final List<MessageRequest> _messages = [];
  static const int _maxMessages = 20; // Максимальное количество сообщений в истории

  /// Получение списка сообщений
  List<MessageRequest> get messages => List.unmodifiable(_messages);

  ChatCubit(this._repository) : super(const ChatState.initial());

  /// Очистка истории сообщений
  void clearHistory() {
    _messages.clear();
    emit(const ChatState.initial());
  }

  /// Отправка сообщения с ожиданием полного ответа
  Future<void> sendMessage(String text) async {
    try {
      // Создаем временный список сообщений для запроса, не добавляя в историю
      final tempMessages = List<MessageRequest>.from(_messages);
      final userMessage = MessageRequest(role: 'user', content: text);
      tempMessages.add(userMessage);
      
      // Показываем загрузку с текстом пользователя
      emit(const ChatState.loading());
      
      // Создаем запрос с временным списком сообщений
      final request = ChatRequest(
        messages: tempMessages,
        stream: false,
      );
      
      // Отправляем запрос и ждем ответа
      final response = await _repository.sendMessage(request);
      
      // Проверяем и обрабатываем ответ
      if (response.choices.isNotEmpty) {
        final content = response.choices.first.message.content;
        if (content.isNotEmpty) {
          // Добавляем оба сообщения в историю только после успешного ответа
          _addUserMessage(text);
          _addAssistantMessage(content);
          emit(ChatState.completed(content));
        } else {
          throw Exception('Получен пустой ответ от сервера');
        }
      } else {
        throw Exception('Некорректный формат ответа от сервера');
      }
    } catch (e, stackTrace) {
      _handleError('Ошибка при отправке сообщения: $e', stackTrace);
    }
  }

  
  /// Добавление сообщения пользователя в историю
  void _addUserMessage(String text) {
    _messages.add(MessageRequest(
      role: 'user',
      content: text,
    ));
    _trimMessages();
  }
  
  /// Добавление ответа ассистента в историю
  void _addAssistantMessage(String text) {
    _messages.add(MessageRequest(
      role: 'assistant',
      content: text,
    ));
    _trimMessages();
  }
  
  /// Ограничение размера истории сообщений
  void _trimMessages() {
    if (_messages.length > _maxMessages) {
      _messages.removeRange(0, _messages.length - _maxMessages);
    }
  }
  
  /// Обработка ошибок
  void _handleError(String message, StackTrace stackTrace) {
    developer.log(message, error: message, stackTrace: stackTrace);
    emit(ChatState.error(message));
  }
}