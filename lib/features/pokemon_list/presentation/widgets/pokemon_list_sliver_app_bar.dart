import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonListSliverAppBar extends StatelessWidget {
  final bool pinned;
  final bool snap;
  final bool floating;

  const PokemonListSliverAppBar({
    required this.pinned,
    required this.snap,
    required this.floating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      snap: snap,
      floating: floating,
      expandedHeight: 160.0,
      backgroundColor: ColorTokens.secondaryColor,
      // title: Text(Strings.appBarHomePageTitle),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          Strings.appBarHomePageTitle,
          style: TextStyleTokens.mainTitleWhite,
        ),
      ),
    );
  }
}
