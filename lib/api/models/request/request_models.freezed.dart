// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRequest implements DiagnosticableTreeMixin {

 String get model; List<MessageRequest> get messages; bool get stream; int get maxTokens; double get temperature; double get topP; List<String> get searchDomainFilter; bool get returnImages; bool get returnRelatedQuestions; String get searchRecencyFilter; int get topK; double get presencePenalty; double get frequencyPenalty;
/// Create a copy of ChatRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRequestCopyWith<ChatRequest> get copyWith => _$ChatRequestCopyWithImpl<ChatRequest>(this as ChatRequest, _$identity);

  /// Serializes this ChatRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatRequest'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('stream', stream))..add(DiagnosticsProperty('maxTokens', maxTokens))..add(DiagnosticsProperty('temperature', temperature))..add(DiagnosticsProperty('topP', topP))..add(DiagnosticsProperty('searchDomainFilter', searchDomainFilter))..add(DiagnosticsProperty('returnImages', returnImages))..add(DiagnosticsProperty('returnRelatedQuestions', returnRelatedQuestions))..add(DiagnosticsProperty('searchRecencyFilter', searchRecencyFilter))..add(DiagnosticsProperty('topK', topK))..add(DiagnosticsProperty('presencePenalty', presencePenalty))..add(DiagnosticsProperty('frequencyPenalty', frequencyPenalty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&const DeepCollectionEquality().equals(other.searchDomainFilter, searchDomainFilter)&&(identical(other.returnImages, returnImages) || other.returnImages == returnImages)&&(identical(other.returnRelatedQuestions, returnRelatedQuestions) || other.returnRelatedQuestions == returnRelatedQuestions)&&(identical(other.searchRecencyFilter, searchRecencyFilter) || other.searchRecencyFilter == searchRecencyFilter)&&(identical(other.topK, topK) || other.topK == topK)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(messages),stream,maxTokens,temperature,topP,const DeepCollectionEquality().hash(searchDomainFilter),returnImages,returnRelatedQuestions,searchRecencyFilter,topK,presencePenalty,frequencyPenalty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatRequest(model: $model, messages: $messages, stream: $stream, maxTokens: $maxTokens, temperature: $temperature, topP: $topP, searchDomainFilter: $searchDomainFilter, returnImages: $returnImages, returnRelatedQuestions: $returnRelatedQuestions, searchRecencyFilter: $searchRecencyFilter, topK: $topK, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty)';
}


}

/// @nodoc
abstract mixin class $ChatRequestCopyWith<$Res>  {
  factory $ChatRequestCopyWith(ChatRequest value, $Res Function(ChatRequest) _then) = _$ChatRequestCopyWithImpl;
@useResult
$Res call({
 String model, List<MessageRequest> messages, bool stream, int maxTokens, double temperature, double topP, List<String> searchDomainFilter, bool returnImages, bool returnRelatedQuestions, String searchRecencyFilter, int topK, double presencePenalty, double frequencyPenalty
});




}
/// @nodoc
class _$ChatRequestCopyWithImpl<$Res>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._self, this._then);

  final ChatRequest _self;
  final $Res Function(ChatRequest) _then;

/// Create a copy of ChatRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? messages = null,Object? stream = null,Object? maxTokens = null,Object? temperature = null,Object? topP = null,Object? searchDomainFilter = null,Object? returnImages = null,Object? returnRelatedQuestions = null,Object? searchRecencyFilter = null,Object? topK = null,Object? presencePenalty = null,Object? frequencyPenalty = null,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageRequest>,stream: null == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,topP: null == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double,searchDomainFilter: null == searchDomainFilter ? _self.searchDomainFilter : searchDomainFilter // ignore: cast_nullable_to_non_nullable
as List<String>,returnImages: null == returnImages ? _self.returnImages : returnImages // ignore: cast_nullable_to_non_nullable
as bool,returnRelatedQuestions: null == returnRelatedQuestions ? _self.returnRelatedQuestions : returnRelatedQuestions // ignore: cast_nullable_to_non_nullable
as bool,searchRecencyFilter: null == searchRecencyFilter ? _self.searchRecencyFilter : searchRecencyFilter // ignore: cast_nullable_to_non_nullable
as String,topK: null == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int,presencePenalty: null == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double,frequencyPenalty: null == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRequest].
extension ChatRequestPatterns on ChatRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  List<MessageRequest> messages,  bool stream,  int maxTokens,  double temperature,  double topP,  List<String> searchDomainFilter,  bool returnImages,  bool returnRelatedQuestions,  String searchRecencyFilter,  int topK,  double presencePenalty,  double frequencyPenalty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRequest() when $default != null:
return $default(_that.model,_that.messages,_that.stream,_that.maxTokens,_that.temperature,_that.topP,_that.searchDomainFilter,_that.returnImages,_that.returnRelatedQuestions,_that.searchRecencyFilter,_that.topK,_that.presencePenalty,_that.frequencyPenalty);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  List<MessageRequest> messages,  bool stream,  int maxTokens,  double temperature,  double topP,  List<String> searchDomainFilter,  bool returnImages,  bool returnRelatedQuestions,  String searchRecencyFilter,  int topK,  double presencePenalty,  double frequencyPenalty)  $default,) {final _that = this;
switch (_that) {
case _ChatRequest():
return $default(_that.model,_that.messages,_that.stream,_that.maxTokens,_that.temperature,_that.topP,_that.searchDomainFilter,_that.returnImages,_that.returnRelatedQuestions,_that.searchRecencyFilter,_that.topK,_that.presencePenalty,_that.frequencyPenalty);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  List<MessageRequest> messages,  bool stream,  int maxTokens,  double temperature,  double topP,  List<String> searchDomainFilter,  bool returnImages,  bool returnRelatedQuestions,  String searchRecencyFilter,  int topK,  double presencePenalty,  double frequencyPenalty)?  $default,) {final _that = this;
switch (_that) {
case _ChatRequest() when $default != null:
return $default(_that.model,_that.messages,_that.stream,_that.maxTokens,_that.temperature,_that.topP,_that.searchDomainFilter,_that.returnImages,_that.returnRelatedQuestions,_that.searchRecencyFilter,_that.topK,_that.presencePenalty,_that.frequencyPenalty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRequest with DiagnosticableTreeMixin implements ChatRequest {
  const _ChatRequest({this.model = "sonar", required final  List<MessageRequest> messages, this.stream = true, this.maxTokens = 1000, this.temperature = 0.7, this.topP = 0.9, final  List<String> searchDomainFilter = const ['example.com'], this.returnImages = false, this.returnRelatedQuestions = true, this.searchRecencyFilter = 'day', this.topK = 3, this.presencePenalty = 0.0, this.frequencyPenalty = 0.0}): _messages = messages,_searchDomainFilter = searchDomainFilter;
  factory _ChatRequest.fromJson(Map<String, dynamic> json) => _$ChatRequestFromJson(json);

@override@JsonKey() final  String model;
 final  List<MessageRequest> _messages;
@override List<MessageRequest> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool stream;
@override@JsonKey() final  int maxTokens;
@override@JsonKey() final  double temperature;
@override@JsonKey() final  double topP;
 final  List<String> _searchDomainFilter;
@override@JsonKey() List<String> get searchDomainFilter {
  if (_searchDomainFilter is EqualUnmodifiableListView) return _searchDomainFilter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchDomainFilter);
}

@override@JsonKey() final  bool returnImages;
@override@JsonKey() final  bool returnRelatedQuestions;
@override@JsonKey() final  String searchRecencyFilter;
@override@JsonKey() final  int topK;
@override@JsonKey() final  double presencePenalty;
@override@JsonKey() final  double frequencyPenalty;

/// Create a copy of ChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRequestCopyWith<_ChatRequest> get copyWith => __$ChatRequestCopyWithImpl<_ChatRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatRequest'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('messages', messages))..add(DiagnosticsProperty('stream', stream))..add(DiagnosticsProperty('maxTokens', maxTokens))..add(DiagnosticsProperty('temperature', temperature))..add(DiagnosticsProperty('topP', topP))..add(DiagnosticsProperty('searchDomainFilter', searchDomainFilter))..add(DiagnosticsProperty('returnImages', returnImages))..add(DiagnosticsProperty('returnRelatedQuestions', returnRelatedQuestions))..add(DiagnosticsProperty('searchRecencyFilter', searchRecencyFilter))..add(DiagnosticsProperty('topK', topK))..add(DiagnosticsProperty('presencePenalty', presencePenalty))..add(DiagnosticsProperty('frequencyPenalty', frequencyPenalty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRequest&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP)&&const DeepCollectionEquality().equals(other._searchDomainFilter, _searchDomainFilter)&&(identical(other.returnImages, returnImages) || other.returnImages == returnImages)&&(identical(other.returnRelatedQuestions, returnRelatedQuestions) || other.returnRelatedQuestions == returnRelatedQuestions)&&(identical(other.searchRecencyFilter, searchRecencyFilter) || other.searchRecencyFilter == searchRecencyFilter)&&(identical(other.topK, topK) || other.topK == topK)&&(identical(other.presencePenalty, presencePenalty) || other.presencePenalty == presencePenalty)&&(identical(other.frequencyPenalty, frequencyPenalty) || other.frequencyPenalty == frequencyPenalty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_messages),stream,maxTokens,temperature,topP,const DeepCollectionEquality().hash(_searchDomainFilter),returnImages,returnRelatedQuestions,searchRecencyFilter,topK,presencePenalty,frequencyPenalty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatRequest(model: $model, messages: $messages, stream: $stream, maxTokens: $maxTokens, temperature: $temperature, topP: $topP, searchDomainFilter: $searchDomainFilter, returnImages: $returnImages, returnRelatedQuestions: $returnRelatedQuestions, searchRecencyFilter: $searchRecencyFilter, topK: $topK, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty)';
}


}

/// @nodoc
abstract mixin class _$ChatRequestCopyWith<$Res> implements $ChatRequestCopyWith<$Res> {
  factory _$ChatRequestCopyWith(_ChatRequest value, $Res Function(_ChatRequest) _then) = __$ChatRequestCopyWithImpl;
@override @useResult
$Res call({
 String model, List<MessageRequest> messages, bool stream, int maxTokens, double temperature, double topP, List<String> searchDomainFilter, bool returnImages, bool returnRelatedQuestions, String searchRecencyFilter, int topK, double presencePenalty, double frequencyPenalty
});




}
/// @nodoc
class __$ChatRequestCopyWithImpl<$Res>
    implements _$ChatRequestCopyWith<$Res> {
  __$ChatRequestCopyWithImpl(this._self, this._then);

  final _ChatRequest _self;
  final $Res Function(_ChatRequest) _then;

/// Create a copy of ChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? messages = null,Object? stream = null,Object? maxTokens = null,Object? temperature = null,Object? topP = null,Object? searchDomainFilter = null,Object? returnImages = null,Object? returnRelatedQuestions = null,Object? searchRecencyFilter = null,Object? topK = null,Object? presencePenalty = null,Object? frequencyPenalty = null,}) {
  return _then(_ChatRequest(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageRequest>,stream: null == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as bool,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,topP: null == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double,searchDomainFilter: null == searchDomainFilter ? _self._searchDomainFilter : searchDomainFilter // ignore: cast_nullable_to_non_nullable
as List<String>,returnImages: null == returnImages ? _self.returnImages : returnImages // ignore: cast_nullable_to_non_nullable
as bool,returnRelatedQuestions: null == returnRelatedQuestions ? _self.returnRelatedQuestions : returnRelatedQuestions // ignore: cast_nullable_to_non_nullable
as bool,searchRecencyFilter: null == searchRecencyFilter ? _self.searchRecencyFilter : searchRecencyFilter // ignore: cast_nullable_to_non_nullable
as String,topK: null == topK ? _self.topK : topK // ignore: cast_nullable_to_non_nullable
as int,presencePenalty: null == presencePenalty ? _self.presencePenalty : presencePenalty // ignore: cast_nullable_to_non_nullable
as double,frequencyPenalty: null == frequencyPenalty ? _self.frequencyPenalty : frequencyPenalty // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$MessageRequest implements DiagnosticableTreeMixin {

 String get role; String get content;
/// Create a copy of MessageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageRequestCopyWith<MessageRequest> get copyWith => _$MessageRequestCopyWithImpl<MessageRequest>(this as MessageRequest, _$identity);

  /// Serializes this MessageRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MessageRequest'))
    ..add(DiagnosticsProperty('role', role))..add(DiagnosticsProperty('content', content));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageRequest&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MessageRequest(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class $MessageRequestCopyWith<$Res>  {
  factory $MessageRequestCopyWith(MessageRequest value, $Res Function(MessageRequest) _then) = _$MessageRequestCopyWithImpl;
@useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class _$MessageRequestCopyWithImpl<$Res>
    implements $MessageRequestCopyWith<$Res> {
  _$MessageRequestCopyWithImpl(this._self, this._then);

  final MessageRequest _self;
  final $Res Function(MessageRequest) _then;

/// Create a copy of MessageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageRequest].
extension MessageRequestPatterns on MessageRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageRequest value)  $default,){
final _that = this;
switch (_that) {
case _MessageRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MessageRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageRequest() when $default != null:
return $default(_that.role,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String content)  $default,) {final _that = this;
switch (_that) {
case _MessageRequest():
return $default(_that.role,_that.content);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String content)?  $default,) {final _that = this;
switch (_that) {
case _MessageRequest() when $default != null:
return $default(_that.role,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageRequest with DiagnosticableTreeMixin implements MessageRequest {
  const _MessageRequest({this.role = "user", required this.content});
  factory _MessageRequest.fromJson(Map<String, dynamic> json) => _$MessageRequestFromJson(json);

@override@JsonKey() final  String role;
@override final  String content;

/// Create a copy of MessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageRequestCopyWith<_MessageRequest> get copyWith => __$MessageRequestCopyWithImpl<_MessageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MessageRequest'))
    ..add(DiagnosticsProperty('role', role))..add(DiagnosticsProperty('content', content));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageRequest&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MessageRequest(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MessageRequestCopyWith<$Res> implements $MessageRequestCopyWith<$Res> {
  factory _$MessageRequestCopyWith(_MessageRequest value, $Res Function(_MessageRequest) _then) = __$MessageRequestCopyWithImpl;
@override @useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class __$MessageRequestCopyWithImpl<$Res>
    implements _$MessageRequestCopyWith<$Res> {
  __$MessageRequestCopyWithImpl(this._self, this._then);

  final _MessageRequest _self;
  final $Res Function(_MessageRequest) _then;

/// Create a copy of MessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,}) {
  return _then(_MessageRequest(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
