import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonar_assistant/features/chat/chat/cubit/chat_cubit.dart';
import 'package:sonar_assistant/utils/colors.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ИИ ЧАТ'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.mainGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: BlocConsumer<ChatCubit, ChatState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (error) => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(error))),
          );
          _scrollToBottom();
        },
        builder: (context, state) {
          return Column(
            children: [
              // Область сообщений
              Expanded(
                child: state.when(
                  initial: () => const Center(child: Text('Начните диалог')),
                  loading: () {
                    return _buildMessagesList(context, '', true);
                  },
                  completed: (content) =>
                      _buildMessagesList(context, '', false),
                  error: (error) => Center(child: Text('Ошибка: $error')),
                ),
              ),
              // Поле ввода сообщения
              _buildMessageInput(context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMessagesList(
    BuildContext context,
    String content,
    bool isLoading,
  ) {
    final cubit = context.read<ChatCubit>();
    final messages = cubit.messages;

    final displayMessages = List<MapEntry<bool, String>>.from(
      messages.map((msg) => MapEntry(msg.role == 'user', msg.content)),
    );

    if (content.isNotEmpty) {
      displayMessages.add(MapEntry(false, content));
    }

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      itemCount: displayMessages.length,
      itemBuilder: (context, index) {
        final message = displayMessages[index];
        return _buildMessageBubble(
          context,
          message: message.value,
          isUser: message.key,
        );
      },
    );
  }

  Widget _buildMessageBubble(
    BuildContext context, {
    required String message,
    required bool isUser,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Align(
        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.8,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isUser
                  ? AppColors.mainGradient
                  : [AppColors.surface, AppColors.surface],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SelectableText(message)],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Container(
          decoration: BoxDecoration(color: AppColors.surface),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: "OpenSans",
                    ),
                    controller: _messageController,
                    enabled: !isLoading,
                    decoration: InputDecoration(
                      
                      fillColor: AppColors.surface,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: AppColors.purple9333EA),
                      ),

                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.onSurface,
                      ),

                      hintText: isLoading
                          ? 'Отправка...'
                          : 'Введите сообщение...',
                    ),
                    onSubmitted: isLoading ? null : (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8.0),

                GestureDetector(
                  onTap: isLoading ? null : _sendMessage,
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(colors: AppColors.mainGradient),
                    ),
                    child: isLoading
                        ? const SizedBox(
                            width: 10,
                            height: 10,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.white,
                              ),
                            ),
                          )
                        : const Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _sendMessage() {
    final message = _messageController.text.trim();
    if (message.isNotEmpty) {
      context.read<ChatCubit>().sendMessage(message);
      _messageController.clear();
    }
  }
}
