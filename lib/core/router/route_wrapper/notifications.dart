import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsWrapperRoute extends StatelessWidget {
  const NotificationsWrapperRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}