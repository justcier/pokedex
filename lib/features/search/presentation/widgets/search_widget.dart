import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class SearchWidget extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const SearchWidget({
    required this.focusNode,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchCubit _searchCubit;

  @override
  void initState() {
    super.initState();
    _searchCubit = getIt<SearchCubit>();
  }

  @override
  void dispose() {
    _searchCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (context.screenHeight / 30),
      child: BlocBuilder<SearchCubit, SearchState>(
        bloc: _searchCubit,
        builder: (_, SearchState state) {
          return TextField(
            focusNode: widget.focusNode,
            controller: widget.controller,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) => triggerSearch(),
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
                fontSize: 7,
              ),
              suffixIcon: GestureDetector(
                onTap: triggerSearch,
                child: const Icon(
                  Icons.search,
                  size: 20,
                  color: ColorTokens.secondaryColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  OutlineInputBorder get _border => const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorTokens.secondaryColor,
          width: Dimensions.sizeS,
        ),
      );

  void triggerSearch() {
    FocusScope.of(context).requestFocus(FocusNode());
    _searchCubit.searchPokemonByName(widget.controller.text);
  }
}
