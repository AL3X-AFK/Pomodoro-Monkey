import 'package:flutter/material.dart';

class ControlButtons extends StatefulWidget {
  const ControlButtons({super.key});

  @override
  State<ControlButtons> createState() => _ControlButtonsState();
}

class _ControlButtonsState extends State<ControlButtons> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            // Acción al presionar el botón de play
          },
          iconSize: 48,
          icon: Icon(Icons.play_arrow),
        ),
        
        SizedBox(width: 32), // Espacio entre los botones
        IconButton(
          onPressed: () {
            // Acción al presionar el botón de refrest
          },
          iconSize: 36,
          icon: Icon(Icons.refresh),
        ),
        
      ],
    );
  }
}