import 'package:flutter/material.dart';

// this.<positional_variable_name> looks for a same name variable,
//so that dart can assign the value to it
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  // class variable to make use of the named or positional parameters
  // final -> since we don't want to change this value once after we assign the value,
  // hence it can be cached and reuse by dart
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

// "Revamp Journey 2.0 w/ M"
