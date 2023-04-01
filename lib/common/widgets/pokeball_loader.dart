import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';

class PokeballLoader extends StatefulWidget {
  const PokeballLoader({Key? key}) : super(key: key);

  @override
  State<PokeballLoader> createState() => _PokeballLoaderState();
}

class _PokeballLoaderState extends State<PokeballLoader>
    with SingleTickerProviderStateMixin {
  late final FlutterGifController controller;

  @override
  void initState() {
    super.initState();
    controller = FlutterGifController(vsync: this);
    controller.repeat(
        min: 0, max: 4, period: const Duration(milliseconds: 200));
    // controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GifImage(
      controller: controller,
      image: const AssetImage("assets/pokeball.gif"),
    );
  }
}
