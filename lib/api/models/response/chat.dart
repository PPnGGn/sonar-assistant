part of 'response_models.dart';

@freezed
abstract class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<ChatChoice> choices,
    required Usage usage,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) => 
      _$ChatResponseFromJson(json);
}

@freezed
abstract class ChatChoice with _$ChatChoice {
  const factory ChatChoice({
    required int index,
    required ChatMessage message,
    required dynamic logprobs,
    @JsonKey(name: 'finish_reason') required String finishReason,
  }) = _ChatChoice;

  factory ChatChoice.fromJson(Map<String, dynamic> json) => 
      _$ChatChoiceFromJson(json);
}

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String role,
    required String content,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => 
      _$ChatMessageFromJson(json);
}

@freezed
abstract class Usage with _$Usage {
  const factory Usage({
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => 
      _$UsageFromJson(json);
}
