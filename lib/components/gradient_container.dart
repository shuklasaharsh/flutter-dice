import 'package:first_app/components/custom_column.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/components/custom_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomLeft;

void rollDice() {}

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
      child: Center(
        child: CustomColumn(
          [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            SizedBox(
              height: 100,
              width: 140,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black38,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                ),
                onPressed: rollDice,
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            )
          ],
          MainAxisSize.min,
        ),
      ),
    );
  }
}
