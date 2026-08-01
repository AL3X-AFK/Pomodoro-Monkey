
import 'package:flutter/material.dart';
import 'package:pomodoro_app/core/theme/text_styles.dart';

class TimerDisplay extends StatefulWidget {
  const TimerDisplay({super.key});

  @override
  State<TimerDisplay> createState() => _TimerDisplayState();
}

class _TimerDisplayState extends State<TimerDisplay> {
  int time = 1500; // todo en segundos

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (time > 0) {
                time -= 300;
              } else {
                time = 0;
              }
            });
          },
        ),

        Text(
          "${time~/60}".toString().padLeft(2, '0') + " : " + "${time%60}".toString().padLeft(2, '0'),
          style: TextStyles.timer,
          ),
    

        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              if (time < 3600) {
                time = time + 300;
              } else {
                time = 3600;
              }
            });
          },
        ),
      ],
      
    );
  }
}