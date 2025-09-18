part of 'chat_cubit.dart';

@freezed
abstract class ChatState with _$ChatState {
  /// Начальное состояние с пустым списком сообщений
  const factory ChatState.initial({
    @Default(<MessageRequest>[]) List<MessageRequest> messages,
  }) = _Initial;

  /// Состояние загрузки, список сообщений сохраняется
  const factory ChatState.loading({
    @Default(<MessageRequest>[]) List<MessageRequest> messages,
  }) = _Loading;

  /// Успешно: актуальный список сообщений
  const factory ChatState.success({
    @Default(<MessageRequest>[]) List<MessageRequest> messages,
  }) = _Success;

  /// Ошибка с сообщением и последним списком сообщений
  const factory ChatState.error(
    String message, {
    @Default(<MessageRequest>[]) List<MessageRequest> messages,
  }) = _Error;

  /// Общий геттер для доступа к списку сообщений во всех состояниях
  List<MessageRequest> get messages;
}