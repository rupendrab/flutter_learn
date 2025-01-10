import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

// Alignment startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;
// Use const keyword to make the Alignment objects immutable
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
