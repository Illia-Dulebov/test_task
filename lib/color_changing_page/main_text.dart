import 'package:flutter/material.dart';

/// Text widget with certain font style
class MainText extends StatelessWidget {
  /// String content of the widget
  final String text;

  /// Main text constructor with required value field
  const MainText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 24),
    );
  }
}
