// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) => _ChatRequest(
  model: json['model'] as String? ?? "sonar",
  messages: (json['messages'] as List<dynamic>)
      .map((e) => MessageRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
  stream: json['stream'] as bool? ?? true,
  maxTokens: (json['maxTokens'] as num?)?.toInt() ?? 1000,
  temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
  topP: (json['topP'] as num?)?.toDouble() ?? 0.9,
  searchDomainFilter:
      (json['searchDomainFilter'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const ['example.com'],
  returnImages: json['returnImages'] as bool? ?? false,
  returnRelatedQuestions: json['returnRelatedQuestions'] as bool? ?? true,
  searchRecencyFilter: json['searchRecencyFilter'] as String? ?? 'day',
  topK: (json['topK'] as num?)?.toInt() ?? 3,
  presencePenalty: (json['presencePenalty'] as num?)?.toDouble() ?? 0.0,
  frequencyPenalty: (json['frequencyPenalty'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$ChatRequestToJson(_ChatRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
      'stream': instance.stream,
      'maxTokens': instance.maxTokens,
      'temperature': instance.temperature,
      'topP': instance.topP,
      'searchDomainFilter': instance.searchDomainFilter,
      'returnImages': instance.returnImages,
      'returnRelatedQuestions': instance.returnRelatedQuestions,
      'searchRecencyFilter': instance.searchRecencyFilter,
      'topK': instance.topK,
      'presencePenalty': instance.presencePenalty,
      'frequencyPenalty': instance.frequencyPenalty,
    };

_MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) =>
    _MessageRequest(
      role: json['role'] as String? ?? "user",
      content: json['content'] as String,
    );

Map<String, dynamic> _$MessageRequestToJson(_MessageRequest instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};
