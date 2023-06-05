import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  colorScheme: _lightColorScheme,
  textTheme: _textTheme,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
);

ThemeData darkAppTheme = ThemeData(
  colorScheme: _darkColorScheme,
  textTheme: _textTheme,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
);

TextTheme _textTheme = TextTheme(
  displayLarge:
      GoogleFonts.poppins(fontSize: 48.0, fontWeight: FontWeight.w700),
  displayMedium:
      GoogleFonts.poppins(fontSize: 34.0, fontWeight: FontWeight.w700),
  displaySmall:
      GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineLarge:
      GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineMedium:
      GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w700),
  headlineSmall:
      GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w700),
  titleLarge: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w500),
  titleMedium: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w500),
  titleSmall: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500),
  bodyLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400),
  bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w400),
  bodySmall: GoogleFonts.poppins(fontSize: 12.0, fontWeight: FontWeight.w400),
);

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFA8344B),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFD9DC),
  onPrimaryContainer: Color(0xFF400011),
  secondary: Color(0xFF006A68),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF6FF7F3),
  onSecondaryContainer: Color(0xFF00201F),
  tertiary: Color(0xFF006A61),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF73F8E6),
  onTertiaryContainer: Color(0xFF00201C),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFAFCFF),
  onBackground: Color(0xFF001F2A),
  surface: Color(0xFFFAFCFF),
  onSurface: Color(0xFF001F2A),
  surfaceVariant: Color(0xFFF4DDDE),
  onSurfaceVariant: Color(0xFF524344),
  outline: Color(0xFF847374),
  onInverseSurface: Color(0xFFE1F4FF),
  inverseSurface: Color(0xFF003547),
  inversePrimary: Color(0xFFFFB2BA),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFA8344B),
  outlineVariant: Color(0xFFD7C1C3),
  scrim: Color(0xFF000000),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB2BA),
  onPrimary: Color(0xFF670020),
  primaryContainer: Color(0xFF881B35),
  onPrimaryContainer: Color(0xFFFFD9DC),
  secondary: Color(0xFF4DDAD7),
  onSecondary: Color(0xFF003736),
  secondaryContainer: Color(0xFF00504E),
  onSecondaryContainer: Color(0xFF6FF7F3),
  tertiary: Color(0xFF53DBCA),
  onTertiary: Color(0xFF003732),
  tertiaryContainer: Color(0xFF005049),
  onTertiaryContainer: Color(0xFF73F8E6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F2A),
  onBackground: Color(0xFFBFE9FF),
  surface: Color(0xFF001F2A),
  onSurface: Color(0xFFBFE9FF),
  surfaceVariant: Color(0xFF524344),
  onSurfaceVariant: Color(0xFFD7C1C3),
  outline: Color(0xFF9F8C8D),
  onInverseSurface: Color(0xFF001F2A),
  inverseSurface: Color(0xFFBFE9FF),
  inversePrimary: Color(0xFFA8344B),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB2BA),
  outlineVariant: Color(0xFF524344),
  scrim: Color(0xFF000000),
);
