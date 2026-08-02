
import 'package:flutter/material.dart';
import 'package:pomodoro_app/core/theme/text_styles.dart';

class TimerDisplay extends StatelessWidget {

  //Variables que tiene que enviar el jefe
  final int seconds; //El tiempo a mostrar en pantalla
  final bool isRunning; //Si el temporizador está corriendo o no
  final VoidCallback onIncrement; //Función para incrementar el tiempo
  final VoidCallback onDecrement; //Función para decrementar el tiempo

  const TimerDisplay({
    super.key, 
    required this.seconds, 
    required this.isRunning, 
    required this.onIncrement, 
    required this.onDecrement
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: isRunning ? null : onDecrement,
        ),

        Text(
          "${seconds~/60}".toString().padLeft(2, '0') + " : " + "${seconds%60}".toString().padLeft(2, '0'),
          style: TextStyles.timer,
          ),
    

        IconButton(
          icon: Icon(Icons.add),
          onPressed: isRunning? null: onIncrement,
        ),
      ],
      
    );
  }
}