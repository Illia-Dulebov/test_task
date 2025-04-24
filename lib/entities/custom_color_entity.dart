import 'package:flutter/material.dart';
import 'package:test_task/entities/colors_rgb.dart';
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
    final Map<ColorsRgb, int> randomColorsRGB = Map.unmodifiable({
      ColorsRgb.red: randomIntFromLimit(),
      ColorsRgb.green: randomIntFromLimit(),
      ColorsRgb.blue: randomIntFromLimit(),
    });

    color = Color.fromRGBO(
      randomColorsRGB[ColorsRgb.red] ?? 0,
      randomColorsRGB[ColorsRgb.green] ?? 0,
      randomColorsRGB[ColorsRgb.blue] ?? 0,
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
