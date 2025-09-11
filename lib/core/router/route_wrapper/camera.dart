import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class CameraWrapperRoute extends StatelessWidget {
  const CameraWrapperRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}