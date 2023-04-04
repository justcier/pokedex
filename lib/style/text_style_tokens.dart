import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_tokens.dart';
import 'dimensions.dart';

class TextStyleTokens {
  static TextStyle description = TextStyle(
    fontFamily: GoogleFonts.pressStart2p().fontFamily,
    color: ColorTokens.mainFontColor,
    fontSize: Dimensions.sizeL,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle _main = TextStyle(
    fontFamily: GoogleFonts.pressStart2p().fontFamily,
    fontSize: Dimensions.sizeLXL,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainTitle =
      _main.copyWith(color: ColorTokens.secondaryColor);

  static TextStyle mainTitleWhite =
      _main.copyWith(color: ColorTokens.mainFontColor);

  static TextStyle mainTitleBig = _main.copyWith(
    fontSize: Dimensions.sizeXXL,
    color: ColorTokens.secondaryColor,
  );

  static TextStyle mainDescription =
      description.copyWith(color: ColorTokens.primaryColor);
}
// GoogleFonts.pressStart2PTextTheme
