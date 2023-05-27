import "package:flutter/material.dart";
import 'package:tutorial_app/gradient_container.dart';

void main() {
  // Adding const means that if the value is used again, the existing value in memory is used - improve performance
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            startColor: Color.fromARGB(255, 26, 2, 80),
            endColor: Color.fromARGB(255, 64, 35, 101)),
      ),
    ),
  );
}
