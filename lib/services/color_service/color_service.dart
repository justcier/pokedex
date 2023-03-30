import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:palette_generator/palette_generator.dart';

@injectable
class ColorService {
  Future<Color> getColorFromImage(ImageProvider imageProvider) async =>
      (await PaletteGenerator.fromImageProvider(imageProvider)).colors.first;
}
