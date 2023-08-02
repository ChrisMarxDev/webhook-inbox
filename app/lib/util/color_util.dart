import 'package:flutter/painting.dart';

Color lerpHslColor(Color a, Color b, double t) {
  final hslA = HSLColor.fromColor(a);
  final hslB = HSLColor.fromColor(b);

  final hslLerp = HSLColor.lerp(hslA, hslB, t);
  return hslLerp!.toColor();
}

Color lerpHsvColor(Color a, Color b, double t) {
  final hslA = HSVColor.fromColor(a);
  final hslB = HSVColor.fromColor(b);

  final hslLerp = HSVColor.lerp(hslA, hslB, t);
  return hslLerp!.toColor();
}

extension ColorExtension on Color {
  HSVColor toHsv() => HSVColor.fromColor(this);

  Color alphaBlend(Color color) => Color.alphaBlend(
        color,
        this,
      );
}
