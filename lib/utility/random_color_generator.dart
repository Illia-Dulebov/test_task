import 'dart:ui';

import 'package:test_task/entities/colors_enum.dart';
import 'package:test_task/utility/random_int_generator.dart';

///Random color function generator
Color generateRandomColor({double opacity = 1}) {
  final Map<ColorsRGB, int> randomColorsRGB = Map.unmodifiable({
    ColorsRGB.red: randomIntFromLimit(),
    ColorsRGB.green: randomIntFromLimit(),
    ColorsRGB.blue: randomIntFromLimit(),
  });

  return Color.fromRGBO(
    randomColorsRGB[ColorsRGB.red] ?? 0,
    randomColorsRGB[ColorsRGB.green] ?? 0,
    randomColorsRGB[ColorsRGB.blue] ?? 0,
    opacity,
  );
}
