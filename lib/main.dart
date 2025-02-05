import 'package:flutter/material.dart';
import 'package:mackle_room_designer/core/theme/app_theme.dart';
import 'package:mackle_room_designer/presentation/pages/home_page.dart';
import 'package:mackle_room_designer/presentation/pages/unity_flow.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mackle Room Designer',
      theme: AppTheme.lightTheme,
      //home: const HomePage(),
      home: const UnityFlowPage(),
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
