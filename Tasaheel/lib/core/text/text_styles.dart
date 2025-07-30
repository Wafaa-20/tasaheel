import 'package:flutter/material.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class TextStyles {
  static const String _fontFamily = 'SFArabicRounded';

  // SF700
  static final sf70020 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppPalette.black,
  );
  //?  SF600
  static final sf60036 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 36,
    color: AppPalette.black,
  );

  static final sf60024 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: AppPalette.black,
  );

  //?  SF400
  static final sf40024 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppPalette.black,
  );
  static final sf40018 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppPalette.grayLight,
  );
}
