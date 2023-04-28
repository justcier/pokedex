import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@lazySingleton
class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(FavouritesState.initial()) {
    _getFavourites();
  }

  Future<void> toggleFavouriteState(PokemonDetails pokemonDetails) async {
    if (!state.favouritesList.contains(pokemonDetails)) {
      final newListToEmit = [...state.favouritesList, pokemonDetails];

      emit(state.copyWith(favouritesList: newListToEmit));
      (await getIt.getAsync<StoreFavouritesUseCase>()).call(newListToEmit);
    } else {
      // (await getIt.getAsync<RemoveFromFavouritesUseCase>()).call(pokemonDetails);
      emit(
        state.copyWith(
          favouritesList: state.favouritesList
              .where((favourite) => favourite != pokemonDetails)
              .toList(),
        ),
      );
    }
  }

  Future<void> _getFavourites() async {
    final List<PokemonDetails> storedFavourites =
        (await getIt.getAsync<GetStoredFavouritesUseCase>()).call();

    emit(state.copyWith(favouritesList: storedFavourites));
  }
}
