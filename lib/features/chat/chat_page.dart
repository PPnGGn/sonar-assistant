import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sonar_assistant/utils/colors.dart';
@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200
            ,),
            FilledButton(onPressed: (){}, child: Text("В разработке")),
            OutlinedButton(onPressed: (){}, child: Text("В разработке")),
            Container(
              height: 400,
              width: 300,
              color: AppColors.surface,
              child: Text("В разработке"),
            ),
          ],
        ),
      ),
    );
  }
}