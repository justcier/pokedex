import 'package:flutter/material.dart';
import 'package:pokedex_rest/style/color_tokens.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;

  const CommonScaffold({
    required this.body,
    required this.appBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      backgroundColor: ColorTokens.backgroundColor,
    );
  }
}
