import 'package:flutter/material.dart';
import 'package:tutorial_app/styled_text.dart';

// Final can be used instead of const if the value is not known at compile time
// But with const teh value is locked in at time of compiling - performance improvement
// So functions can't be const or they should be final
const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

// Extends means it inherits from the class
class GradientContainer extends StatelessWidget {
  // Curly braces let you accept named parameters
  // Initialisation code
  const GradientContainer(
      {super.key, required this.startColor, required this.endColor});

  // With modification could be used as a list - final List<Color> colors;
  final Color startColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor
            /*Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 64, 35, 101)*/
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/dice-1.png",
              width: 200,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
