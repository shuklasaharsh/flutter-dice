import 'dart:math';
import 'package:first_app/components/custom_column.dart';
import 'package:flutter/material.dart';

/// DiceRoller creates the dice roller widget that will run the action once the button is pressed.
class DiceRoller extends StatefulWidget {
  // Constructor
  const DiceRoller({super.key});

  // createState
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

/// _DiceRollerState implements the DiceRoller StatefulWidget
class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    // setState for dice image
    setState(() {
      // get random integer
      final random = Random();
      // Create random integer between 1-6
      var randomInt = 1 + random.nextInt(6);
      // update the dice image
      activeDiceImage = "assets/images/dice-$randomInt.png";
    });
  }

  var activeDiceImage = 'assets/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    return CustomColumn(
      [
        Image.asset(
          activeDiceImage,
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
    );
  }
}
