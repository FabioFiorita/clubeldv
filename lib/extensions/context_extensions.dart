import 'package:flutter/material.dart';

extension CustomTextTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension CustomButtonTheme on BuildContext {
  ButtonThemeData get buttonTheme => Theme.of(this).buttonTheme;
}

extension CustomColorScheme on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension CustomPrimaryColor on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
}

extension CustomCanvasColor on BuildContext {
  Color get canvasColor => Theme.of(this).canvasColor;
}

extension CustomOnPrimaryColor on BuildContext {
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;
}

extension CustomOnBackgroundColor on BuildContext {
  Color get onBackgroundColor => Theme.of(this).colorScheme.onBackground;
}

extension CustomSecondaryColor on BuildContext {
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
}

extension CustomSnackBar on BuildContext {
  void snackBar(String text, Color? color) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: color,
    ));
  }
}

extension CustomMediaQuery on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;
}

extension CustomCircularRadius on BuildContext {
  BorderRadius get circularRadius => BorderRadius.circular(16.0);
}

extension CustomBottomCircularRadius on BuildContext {
  BorderRadius get bottomCircularRadius =>
      const BorderRadius.vertical(bottom: Radius.circular(16.0));
}

//edgeinset all

extension CustomEdgeInsetsSmall on BuildContext {
  EdgeInsets get edgeInsetsSmall => const EdgeInsets.all(8.0);
}

extension CustomEdgeInsets on BuildContext {
  EdgeInsets get edgeInsets => const EdgeInsets.all(16.0);
}
