// part of 'chat_cubit.dart';

// @freezed
// abstract class ChatState with _$ChatState {
//   /// Начальное состояние с пустым списком сообщений
//   const factory ChatState.initial({
//     @Default(<MessageRequest>[]) List<MessageRequest> messages,
//   }) = _Initial;

//   /// Состояние загрузки, список сообщений сохраняется
//   const factory ChatState.loading({
//     @Default(<MessageRequest>[]) List<MessageRequest> messages,
//   }) = _Loading;

//   /// Успешно: актуальный список сообщений
//   const factory ChatState.success({
//     @Default(<MessageRequest>[]) List<MessageRequest> messages,
//   }) = _Success;

//   /// Ошибка с сообщением и последним списком сообщений
//   const factory ChatState.error(
//     String message, {
//     @Default(<MessageRequest>[]) List<MessageRequest> messages,
//   }) = _Error;

//   /// Общий геттер для доступа к списку сообщений во всех состояниях
//   List<MessageRequest> get messages;
// }

// lib/features/chat/chat/cubit/chat_state.dart
part of 'chat_cubit.dart';

@freezed
abstract class ChatState with _$ChatState {
  /// Начальное состояние с пустым списком сообщений
  const factory ChatState.initial({
    @Default([]) List<MessageRequest> messages,
  }) = _Initial;

  /// Состояние загрузки, список сообщений сохраняется
  const factory ChatState.loading({
    @Default([]) List<MessageRequest> messages,
  }) = _Loading;

  /// Состояние стриминга с частичным ответом
  const factory ChatState.streaming({
    @Default([]) List<MessageRequest> messages,
    @Default('') String streamingContent,
  }) = _Streaming;

  /// Успешно: актуальный список сообщений
  const factory ChatState.success({
    @Default([]) List<MessageRequest> messages,
  }) = _Success;

  /// Ошибка с сообщением и последним списком сообщений
  const factory ChatState.error(
    String message, {
    @Default([]) List<MessageRequest> messages,
  }) = _Error;
}
