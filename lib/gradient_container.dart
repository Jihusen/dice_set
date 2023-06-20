import 'package:flutter/material.dart';
import 'package:dice_set/dynamic_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    const startAlignment = Alignment.topLeft;
    const endAlignment = Alignment.bottomCenter;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Color.fromARGB(255, 79, 220, 255),
            // Color.fromARGB(255, 248, 252, 49),
            color1,
            color2
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DynamicDice()
      ),
    );
  }
}
