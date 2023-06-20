import 'package:flutter/material.dart';
import 'package:dice_set/gradient_container.dart';

void main() {
  const color2 = Color.fromARGB(255, 115, 11, 185);
  const color1 = Color.fromARGB(255, 27, 46, 216);
  
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(color1, color2),
      ),
    ),
  );
}

