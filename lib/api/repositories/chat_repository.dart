// lib/api/repositories/chat_repository.dart
import 'package:dio/dio.dart';
import 'package:sonar_assistant/api/api.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/models/response/response_models.dart';

class ChatRepository {
  final PerplexityApi _api;
  final String apiKey;

  ChatRepository({required this.apiKey, Dio? dio})
      : _api = PerplexityApi(dio ?? Dio());

  Future<ChatResponse> sendMessage(ChatRequest request) async {
    // Передаем заголовок авторизации явно согласно контракту API
    return _api.sendMessage('Bearer $apiKey', request);
  }
}