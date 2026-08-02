import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final bool isRunning;
  final VoidCallback onPlayPause;
  final VoidCallback onReset;
  const ControlButtons({
    super.key,
    required this.isRunning,
    required this.onPlayPause,
    required this.onReset,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPlayPause,
          iconSize: 48,
          icon: Icon(isRunning? Icons.pause : Icons.play_arrow),
        ),
        
        SizedBox(width: 32), // Espacio entre los botones
        IconButton(
          onPressed: () {
            onReset();
          },
          iconSize: 36,
          icon: Icon(Icons.refresh),
        ),
        
      ],
    );
  }
}