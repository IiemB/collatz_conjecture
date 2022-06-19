import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final String? _fontFamily = GoogleFonts.openSans().fontFamily;

  static final lightTheme = FlexThemeData.light(
    scheme: FlexScheme.materialBaseline,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarStyle: FlexAppBarStyle.material,
    appBarOpacity: 0.00,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // useMaterial3: true,
    fontFamily: _fontFamily,
  );
  static final darkTheme = FlexThemeData.dark(
    scheme: FlexScheme.materialBaseline,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.00,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // useMaterial3: true,
    fontFamily: _fontFamily,
  );

  static final amoledDarkTheme = FlexThemeData.dark(
    scheme: FlexScheme.materialBaseline,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.00,
    darkIsTrueBlack: true,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // useMaterial3: true,
    fontFamily: _fontFamily,
  );

  static ThemeData getTheme(int value) {
    switch (value) {
      case 0:
        return lightTheme;
      case 1:
        return darkTheme;
      case 2:
        return amoledDarkTheme;
      default:
        return lightTheme;
    }
  }
}
