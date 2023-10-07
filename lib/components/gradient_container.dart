import 'dart:math';

import 'package:first_app/components/custom_column.dart';
import 'package:first_app/components/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/components/custom_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomLeft;

/// GradeintContainer
/// * Has a round container with gradient
/// * Works with a linear gradient
class GradientContainer extends StatelessWidget {
  /// GradientContainer constructor
  const GradientContainer(this.start, this.end, this.text, {super.key});

  const GradientContainer.purple(this.text, {super.key})
      : start = Colors.deepPurple,
        end = Colors.deepPurpleAccent;

  final Color start;
  final Color end;
  final String text;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        gradient: LinearGradient(
          colors: [start, end],
          begin: startAlignment, // begin
          end: endAlignment, // end
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
