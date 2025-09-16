part of 'request_models.dart';

@freezed
abstract class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    @Default("sonar") String model,
    required List<MessageRequest> messages,
    @Default(true) bool stream,
    @Default(1000) int maxTokens,
    @Default(0.7) double temperature,
    @Default(0.9) double topP,
    @Default(['example.com']) List<String> searchDomainFilter,
    @Default(false) bool returnImages,
    @Default(true) bool returnRelatedQuestions,
    @Default('day') String searchRecencyFilter,
    @Default(3) int topK,
    @Default(0.0) double presencePenalty,
    @Default(0.0) double frequencyPenalty,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRequestToJson(this as _ChatRequest);
}
