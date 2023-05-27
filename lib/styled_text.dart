import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Named arguments go within curly braces, positional arguments go before curly braces
  const StyledText(String this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
    );
  }
}
