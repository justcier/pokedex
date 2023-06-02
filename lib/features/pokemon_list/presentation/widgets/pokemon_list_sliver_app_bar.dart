import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/features/search/presentation/widgets/search_widget.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';

class PokemonListSliverAppBar extends StatelessWidget {
  final bool pinned;
  final bool snap;
  final bool floating;
  final TextEditingController controller;
  final FocusNode focusNode;

  const PokemonListSliverAppBar({
    required this.pinned,
    required this.snap,
    required this.floating,
    required this.controller,
    required this.focusNode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      snap: snap,
      floating: floating,
      expandedHeight: (context.screenHeight / 10),
      backgroundColor: ColorTokens.darkBackgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(Dimensions.sizeL),
        expandedTitleScale: 2,
        title: SearchWidget(
          controller: controller,
          focusNode: focusNode,
        ),
        centerTitle: true,
      ),
    );
  }
}
