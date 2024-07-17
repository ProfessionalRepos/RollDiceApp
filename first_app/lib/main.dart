import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

final List<Color> colorRgb = List<Color>.from([
  const Color.fromARGB(255, 93, 31, 201),
  const Color.fromARGB(255, 116, 77, 184),
  const Color.fromARGB(255, 133, 115, 166)
]);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: colorRgb,
        ),
      ),
    ),
  );
}
