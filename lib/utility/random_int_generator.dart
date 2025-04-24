import 'dart:math' show Random;

/// Random int generator with the limits
int randomIntFromLimit({int lowLimit = 0, int maxLimit = 255}) {
  final random = Random();

  return lowLimit + random.nextInt(maxLimit);
}
