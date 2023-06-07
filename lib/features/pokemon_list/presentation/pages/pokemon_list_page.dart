import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/common/widgets/pokeball_loader.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_sliver_app_bar.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/widgets/pokemon_list_widget.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';
import 'package:pokedex_rest/features/search/presentation/widgets/error_view_widget.dart';
import 'package:pokedex_rest/features/search/presentation/widgets/search_tile_content.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final PokemonListCubit _pokemonListCubit = getIt<PokemonListCubit>();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pokemonListCubit.getPokemonDetailsList();
    _scrollController.addListener(_fetchMoreDataListener);
  }

  @override
  void dispose() {
    _pokemonListCubit.close();
    _scrollController.removeListener(_fetchMoreDataListener);
    _scrollController.dispose();
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _focusNode.unfocus,
      child: CommonScaffold(
        appBar: AppBar(
          title: Text(
            Strings.appBarHomePageTitle,
            style: TextStyleTokens.mainTitleWhite,
          ),
          backgroundColor: ColorTokens.secondaryColor,
        ),
        body: Center(
          child: BlocBuilder<PokemonListCubit, PokemonListState>(
            bloc: _pokemonListCubit,
            builder: (_, PokemonListState state) {
              final List<PokemonDetails>? pokemonDetailsList =
                  state.pokemonDetailsList;
              final PokemonDetails? searchedPokemon =
                  state.searchedPokemonDetails;

              if (state.isLoading && (pokemonDetailsList?.isEmpty ?? true)) {
                return const PokeballLoader();
              } else if (pokemonDetailsList == null) {
                return const SizedBox.shrink();
              }

              return CustomScrollView(
                slivers: [
                  PokemonListSliverAppBar(
                    pinned: false,
                    snap: false,
                    floating: true,
                    controller: _textEditingController,
                    focusNode: _focusNode,
                  ),
                  if (state.searchState == SearchStateStatus.loading)
                    const SliverToBoxAdapter(child: PokeballLoader())
                  else if (state.searchState == SearchStateStatus.notFoundError)
                    SliverToBoxAdapter(
                      child: ErrorViewWidget(
                        pokemonListCubit: _pokemonListCubit,
                        controller: _textEditingController,
                      ),
                    )
                  else if (searchedPokemon != null)
                    SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.all(Dimensions.sizeM),
                        child: SearchTileContent(
                          pokemonDetails: searchedPokemon,
                          pokemonListCubit: _pokemonListCubit,
                          clearSearchField: _textEditingController.clear,
                        ),
                      ),
                    )
                  else
                    PokemonListWidget(
                      pokemonDetailsList: pokemonDetailsList,
                      isLoading: state.isLoading,
                      onDoubleTap:
                          context.read<FavouritesCubit>().toggleFavouriteState,
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _fetchMoreDataListener() {
    if (_scrollController.position.extentAfter == 0) {
      _pokemonListCubit.fetchNextPage();
    }
  }
}
