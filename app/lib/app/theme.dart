import 'package:flutter/material.dart';

const kPink = Color(0xFFEA439B);
const kPinkLow = Color(0xaaEA439B);
const kTeal = Color(0xFF64D9DB);
const kTealLow = Color(0xaa64D9DB);
const kYellow = Color(0xFFFAE34E);
const kBlack = Color(0xFF000000);
const kWhite = Color(0xFFFFFFFF);

const kWeakGreyLight = Color(0xFFE0E0E0);
const kWeakGreyDark = Color(0xFF303030);
// ignore: avoid_positional_boolean_parameters
ThemeData theme(bool isDark) {
  const primary = kTeal;

  const secondary = kPink;

  final colorScheme = isDark
      ? const ColorScheme.dark(
          primary: primary,
          secondary: secondary,
          background: kBlack,
          onBackground: kWhite,
        )
      : const ColorScheme.light(
          primary: primary,
          secondary: secondary,
          background: kWhite,
          onBackground: kBlack,
        );

  final textTheme = getTextTheme(isDark);
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: kBorderRadius),
    ),
    colorScheme: colorScheme,
    cardTheme: const CardTheme(
      color: kWhite,
      shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
      margin: EdgeInsets.all(0),
    ),
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: kBorderRadius),
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: kPink,
      space: 0,
    ),
  );
}

const BorderRadius kBorderRadius = BorderRadius.all(Radius.circular(8));
const Border kBorder = Border.fromBorderSide(BorderSide());
const BoxShadow kShadowSmall = BoxShadow(
  offset: Offset(4, 4),
);
const BoxShadow kShadowMedium = BoxShadow(
  offset: Offset(4, 4),
);
const BoxShadow kShadowLarge = BoxShadow(
  offset: Offset(8, 8),
);

const BoxDecoration kBaseBox = BoxDecoration(
  borderRadius: kBorderRadius,
  border: kBorder,
  boxShadow: [
    kShadowLarge,
  ],
);

const kDurationBase = Duration(milliseconds: 300);
const kDurationQuick = Duration(milliseconds: 200);

// ignore: avoid_positional_boolean_parameters
TextTheme getTextTheme(bool isDark) {
  return TextTheme(
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: isDark ? kWeakGreyDark : kWeakGreyLight,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: isDark ? kWhite : kBlack,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: isDark ? kWeakGreyDark : kWeakGreyLight,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: isDark ? kWhite : kBlack,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: isDark ? kWhite : kBlack,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: isDark ? kWhite : kBlack,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: isDark ? kWhite : kBlack,
      letterSpacing: 1.3,
      fontFamily: 'Anton',
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: isDark ? kWhite : kBlack,
      letterSpacing: 1.3,
      fontFamily: 'Anton',
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: isDark ? kWhite : kBlack,
      letterSpacing: 1.3,
      fontFamily: 'Anton',
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: isDark ? kWhite : kBlack,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: isDark ? kWhite : kBlack,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: isDark ? kWhite : kBlack,
    ),
  );
}

extension ThemeExtension on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get background => Theme.of(this).colorScheme.background;

  Color get onBackground => Theme.of(this).colorScheme.onBackground;

  Color get cardColor => Theme.of(this).cardTheme.color ?? background;

  Color get textColor => Theme.of(this).textTheme.bodyMedium!.color!;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  Color get weakGrey => isDark ? kWeakGreyDark : kWeakGreyLight;

  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;

  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;

  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;

  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;

  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;

  TextStyle get captionSmall => Theme.of(this).textTheme.labelSmall!;

  TextStyle get captionMedium => Theme.of(this).textTheme.labelMedium!;

  TextStyle get captionLarge => Theme.of(this).textTheme.labelLarge!;
}

extension ShadowExtension on BoxShadow {
  // ignore: avoid_positional_boolean_parameters
  BoxShadow pressed(bool pressed, double height) {
    if (!pressed) return this;

    return copyWith(
      offset: Offset(offset.dx - height, offset.dy - height),
    );
  }

  BoxShadow copyWith({
    Color? color,
    Offset? offset,
    double? blurRadius,
    double? spreadRadius,
  }) {
    return BoxShadow(
      color: color ?? this.color,
      offset: offset ?? this.offset,
      blurRadius: blurRadius ?? this.blurRadius,
      spreadRadius: spreadRadius ?? this.spreadRadius,
    );
  }
}
