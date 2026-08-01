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
  late int currentSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Al abrir la pantalla por primera vez, el tiempo actual será el de trabajo (1500s)
    currentSeconds = workTime;
  }

  void _startTimer(){
    setState(() {
      isRunning = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (currentSeconds > 0) {
          currentSeconds--;
        } else {
          _pauseTimer();
        }
      });
    });
  }

  void _pauseTimer() {
    setState(() {
      isRunning = false;
    });
    // Cancela el metrónomo para que deje de restar segundos
    _timer?.cancel();
  }

  void _resetTimer(){
    setState(() {
      isRunning = false;
      currentSeconds = selectedMode == "work" ? workTime : restTime;
    });
  }

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