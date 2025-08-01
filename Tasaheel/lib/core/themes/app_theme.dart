import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppPalette.whiteLight,
      // primarySwatch: Colors.blue,
      // brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: AppPalette.whiteLight,
        titleTextStyle: TextStyles.sf50024,
      ),
      inputDecorationTheme: InputDecorationTheme(
        // filled: true,
        // fillColor: AppPalette.whitePrimary,
        focusedBorder: _border(AppPalette.yellow),
        labelStyle: TextStyles.sf60018,
        hintStyle: TextStyles.sf30014,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppPalette.iosRed),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppPalette.iosRed),
        ),
        enabledBorder: _border(AppPalette.grey),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
    );
  }

  static UnderlineInputBorder _border(Color borderColor) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: 1),
    );
  }
}
