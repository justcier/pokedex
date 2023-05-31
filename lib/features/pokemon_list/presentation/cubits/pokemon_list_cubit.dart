import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@injectable
class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit({required this.searchCubit})
      : super(PokemonListState.initial()) {
    searchCubitSubscription = searchCubit.stream.listen((searchState) {
      emit(state.copyWith(searchState: searchState.status));

      emit(
        state.copyWith(
          searchState: searchState.status,
          searchedPokemonDetails:
              searchState.isLoaded && searchState.pokemonDetails != null
                  ? searchState.pokemonDetails
                  : null,
        ),
      );
    });
  }

  final SearchCubit searchCubit;
  late StreamSubscription searchCubitSubscription;

  static const _defaultPageSize = 20;

  Future<void> getPokemonDetailsList({int page = 1}) async {
    emit(state.copyWith(status: PokemonListStateStatus.loading));

    final List<Future<PokemonDetails>> pokemonDetailsFutureList = [];
    final pageStartIndex = _defaultPageSize * (page - 1) + 1;
    final pageEndIndex = _defaultPageSize * page + 1;

    for (int i = pageStartIndex; i < pageEndIndex; i++) {
      final pokemonDetailsFuture =
          (await getIt.getAsync<GetPokemonDetailsUseCase>()).call('$i');
      pokemonDetailsFutureList.add(pokemonDetailsFuture);
    }

    final List<PokemonDetails> pokemonDetailsList =
        await Future.wait(pokemonDetailsFutureList);

    final List<PokemonDetails> pokemonListToEmit = page == 1
        ? pokemonDetailsList
        : [...?state.pokemonDetailsList, ...pokemonDetailsList];

    emit(state.copyWith(
      status: PokemonListStateStatus.loaded,
      pokemonDetailsList: pokemonListToEmit,
      currentPage: page,
    ));
  }

  Future<void> fetchNextPage() async {
    final currentPage = state.currentPage;

    if (!state.isLoading && currentPage != null) {
      await getPokemonDetailsList(page: currentPage + 1);
    }
  }

  @override
  Future<void> close() {
    searchCubitSubscription.cancel();
    return super.close();
  }
}
