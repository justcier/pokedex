import 'package:flutter/material.dart';
import 'package:pokedex_rest/style/color_tokens.dart';


class CommonScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  const CommonScaffold({
    required this.body,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorTokens.secondaryColor,
      ),
      body: body,
      backgroundColor: ColorTokens.backgroundColor,
    );
  }
}
