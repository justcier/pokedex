import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    @override
    void initState() {
      super.initState();
      controller;
    }

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    return Container(
      height: (context.screenHeight / 35),
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
              child: TextField(
                controller: controller,
                style: TextStyleTokens.mainDescription.copyWith(fontSize: 6),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: Strings.searchHint,
                ),
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
