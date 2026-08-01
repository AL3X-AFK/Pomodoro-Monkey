import 'package:flutter/material.dart';

class PetDisplay extends StatefulWidget {
  const PetDisplay({super.key});

  @override
  State<PetDisplay> createState() => _PetDisplayState();
}

class _PetDisplayState extends State<PetDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: const Color.fromARGB(160, 255, 255, 255),
          shape: BoxShape.circle, // En forma de círculo o bordes redondeados
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.pets,
              size: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 180,
              child: const Text(
                'Próximamente una mascota virtual',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}