// lib/api/repositories/chat_repository.dart
import 'package:dio/dio.dart';
import 'package:sonar_assistant/api/api.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/models/response/response_models.dart';

class ChatRepository {
  final PerplexityApi _api;
  final String apiKey;

  ChatRepository({required this.apiKey, Dio? dio}) : _api = PerplexityApi(
    dio ?? Dio()
      ..options.headers['Content-Type'] = 'application/json'
      ..interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer $apiKey';
          options.headers['Content-Type'] = 'application/json';
          return handler.next(options);
        },
      ))
  );

  Future<ChatResponse> sendMessage(ChatRequest request) async {
    return _api.sendMessage('', request.copyWith(stream: false));
  }
}