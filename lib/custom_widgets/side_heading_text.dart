import 'package:flutter/material.dart';

class SideHeadingText extends StatelessWidget {
  final String text; // Declare a final variable to hold the text value

  const SideHeadingText({
    super.key,
    required this.text, // Add text as a required constructor parameter
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Use the passed text value here
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    );
  }
}