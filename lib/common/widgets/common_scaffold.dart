import 'package:flutter/material.dart';
import 'package:pokedex_rest/style/color_tokens.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final BottomNavigationBar? navigationBar;

  const CommonScaffold({
    required this.body,
    this.appBar,
    this.navigationBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: navigationBar,
      backgroundColor: ColorTokens.backgroundColor,
    );
  }
}
