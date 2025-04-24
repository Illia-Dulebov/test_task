import 'package:flutter/material.dart';
import 'package:test_task/entities/colorsRGB_enum.dart';
import 'package:test_task/utility/random_int_generator.dart';

/// Custom color entity with opacity
class CustomColorEntity {
  /// Color from Material design
  Color color;

  /// Opacity value
  double opacity;

  /// Color entity constructor with default values
  CustomColorEntity({this.color = Colors.white, this.opacity = 1.0});

  /// Custom color generator method
  void generateAndSetRandomColor({double opacity = 1}) {
    final Map<ColorsRGB, int> randomColorsRGB = Map.unmodifiable({
      ColorsRGB.red: randomIntFromLimit(),
      ColorsRGB.green: randomIntFromLimit(),
      ColorsRGB.blue: randomIntFromLimit(),
    });

    color = Color.fromRGBO(
      randomColorsRGB[ColorsRGB.red] ?? 0,
      randomColorsRGB[ColorsRGB.green] ?? 0,
      randomColorsRGB[ColorsRGB.blue] ?? 0,
      opacity,
    );
  }

  /// Copy method for the class instance
  CustomColorEntity copyWith({Color? color, double? opacity}) {
    final double localOpacity = opacity ?? this.opacity;

    return CustomColorEntity(
      color: (color ?? this.color).withValues(alpha: localOpacity),
      opacity: localOpacity,
    );
  }
}
