import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn(this.widgets, this.axisSize, {super.key});

  final List<Widget> widgets;
  final MainAxisSize axisSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: axisSize,
      children: widgets,
    );
  }
}
