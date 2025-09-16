part of 'request_models.dart';

@freezed
abstract class MessageRequest with _$MessageRequest {
  const factory MessageRequest({
    @Default("user") String role,
    required String content,
  }) = _MessageRequest;

  factory MessageRequest.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestFromJson(json);
      
  Map<String, dynamic> toJson() => _$MessageRequestToJson(this as _MessageRequest);
}
