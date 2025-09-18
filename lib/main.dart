// lib/main.dart
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonar_assistant/api/repositories/chat_repository.dart';
import 'package:sonar_assistant/core/router/app_router/app_router.dart';
import 'package:sonar_assistant/features/chat/chat/cubit/chat_cubit.dart';
import 'package:sonar_assistant/utils/theme.dart';

void main() {
  const apiKey = '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';

  // Инициализируем репозиторий с поддержкой стриминга
  final chatRepository = ChatRepository(
    apiKey: apiKey,
    dio: Dio(),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: chatRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ChatCubit(context.read<ChatRepository>()),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'Sonar Assistant',
      theme: appTheme,
      routerConfig: appRouter.config(),
    );
  }
}
