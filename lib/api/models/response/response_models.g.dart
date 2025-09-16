// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) =>
    _ChatResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };

_ChatChoice _$ChatChoiceFromJson(Map<String, dynamic> json) => _ChatChoice(
  index: (json['index'] as num).toInt(),
  message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
  logprobs: json['logprobs'],
  finishReason: json['finish_reason'] as String,
);

Map<String, dynamic> _$ChatChoiceToJson(_ChatChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'logprobs': instance.logprobs,
      'finish_reason': instance.finishReason,
    };

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  role: json['role'] as String,
  content: json['content'] as String,
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};

_Usage _$UsageFromJson(Map<String, dynamic> json) => _Usage(
  promptTokens: (json['prompt_tokens'] as num).toInt(),
  completionTokens: (json['completion_tokens'] as num).toInt(),
  totalTokens: (json['total_tokens'] as num).toInt(),
);

Map<String, dynamic> _$UsageToJson(_Usage instance) => <String, dynamic>{
  'prompt_tokens': instance.promptTokens,
  'completion_tokens': instance.completionTokens,
  'total_tokens': instance.totalTokens,
};
