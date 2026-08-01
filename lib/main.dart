import 'package:flutter/material.dart';
import 'package:pomodoro_app/core/screens/home_screen.dart';
import 'package:pomodoro_app/core/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pomodoro App'),
          backgroundColor: AppColors.primaryColor
        ),
        backgroundColor: AppColors.backgroundColor,
        body: HomeScreen(),
      )
    );
  }
}
