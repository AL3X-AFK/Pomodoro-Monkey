import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pomodoro_app/core/theme/text_styles.dart';
import 'package:pomodoro_app/core/widgets/control_buttons.dart';
import 'package:pomodoro_app/core/widgets/mode_selector.dart';
import 'package:pomodoro_app/core/widgets/pet_display.dart';
import 'package:pomodoro_app/core/widgets/timer_display.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isRunning = false;
  String selectedMode = "work";
  int workTime = 1500; // 25 minutos en segundos
  int restTime = 300; // 5 minutos en segundos
  int currentTime = 1500; // Tiempo actual en segundos
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Es momento de concentrarse!', style: TextStyles.general),
        PetDisplay(),
        ModeSelector(),
        TimerDisplay(),
        ControlButtons(),
        
      ],
    );
  }
}