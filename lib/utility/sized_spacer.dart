import 'package:flutter/cupertino.dart';

/// Utility sized box spacer widget
class SizedSpacer extends StatelessWidget {
  /// Height of the sized box
  final double height;

  /// Width of the sized box
  final double width;

  /// Sized box with parameters constructor
  const SizedSpacer({this.height = 10, this.width = 10, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
