import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchWidget extends StatefulWidget {
  final FocusNode focusNode;
  const SearchWidget({
    required this.focusNode,
    Key? key,
  }) : super(key: key);

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

    return SizedBox(
      height: (context.screenHeight / 30),
      child: TextField(
        focusNode: widget.focusNode,
        controller: controller,
        cursorColor: ColorTokens.primaryColor,
        style: TextStyleTokens.mainDescription
            .copyWith(color: ColorTokens.secondaryColor, fontSize: 8),
        decoration: InputDecoration(
          enabledBorder: _border,
          focusedBorder: _border,
          labelText: Strings.searchLabel,
          labelStyle: TextStyleTokens.mainDescription.copyWith(
              color: ColorTokens.secondaryColor,
              overflow: TextOverflow.visible,
              fontSize: 7),
          suffixIcon: const Icon(
            Icons.search,
            size: 20,
            color: ColorTokens.secondaryColor,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder get _border => const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorTokens.secondaryColor,
          width: Dimensions.sizeS,
        ),
      );
}
