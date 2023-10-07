import 'package:flutter/material.dart';

/// CustomText accepts
/// * String outputText
///   * This creates the data bindning to accept some text of type String
class CustomText extends StatelessWidget {
  const CustomText(this.outputText, {key}) : super(key: key);

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.776),
        fontSize: 24,
      ),
    );
  }
}
