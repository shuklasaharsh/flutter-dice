import 'package:flutter/material.dart';
import 'package:first_app/components/gradient_container.dart';
// This Dart File will be the main file for the application

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromRGBO(163, 24, 24, 1),
            Color.fromRGBO(60, 1, 1, 1), "some text"),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
  );
}
