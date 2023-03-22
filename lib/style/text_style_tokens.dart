import 'package:flutter/material.dart';

import 'color_tokens.dart';
import 'dimensions.dart';

class TextStyleTokens {
  static const TextStyle description = TextStyle(
    color: ColorTokens.mainFontColor,
    fontSize: Dimensions.sizeL,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle _main = TextStyle(
    fontSize: Dimensions.sizeXXL,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainTitle =
      _main.copyWith(color: ColorTokens.secondaryColor);

  static TextStyle mainTitleWhite =
      _main.copyWith(color: ColorTokens.mainFontColor);
}
