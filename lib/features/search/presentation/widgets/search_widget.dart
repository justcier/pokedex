import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (context.screenHeight / 30),
      decoration: BoxDecoration(
        color: ColorTokens.white,
        borderRadius: BorderRadius.circular(Dimensions.sizeL),
        border: Border.all(color: ColorTokens.darkBackgroundColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimensions.sizeS,
          horizontal: Dimensions.sizeM,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                'Choose your Pokemon!',
                style: TextStyleTokens.mainDescription.copyWith(fontSize: 6),
              ),
            ),
            const Icon(
              Icons.search,
              color: ColorTokens.secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
