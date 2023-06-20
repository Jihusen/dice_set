
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_set/white_text.dart';

final randomizer = Random();

class DynamicDice extends StatefulWidget {
  const DynamicDice({super.key});

  @override
  State<DynamicDice> createState() {
    return _DynamicDiceState();
  }
}

class _DynamicDiceState extends State<DynamicDice> {
  var activeRoll = 6;

  void rollDice() {
    setState(() {
      activeRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        dynamicWidth(5),
        const SizedBox(
          height: 20,
        ),
        FilledButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 250, 143, 44),
          ),
          child: const WhiteText('Roll the Dice!'),
        )
      ],
    );
  }

  Widget dynamicWidth(double width) {
    width = width / 10;
    return FractionallySizedBox(
      widthFactor: width,
      child: Image.asset('assets/dice_images/dice6_$activeRoll.png'),
    );
  }
}
