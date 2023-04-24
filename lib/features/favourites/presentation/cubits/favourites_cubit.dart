import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/add_to_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@lazySingleton
class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(FavouritesState.initial());

  Future<void> toggleFavouriteState(PokemonDetails pokemonDetails) async {
    if (!state.favouritesList.contains(pokemonDetails)) {
      (await getIt.getAsync<AddToFavouritesUseCase>()).call(pokemonDetails);
      emit(
        state.copyWith(
          favouritesList: [
            ...state.favouritesList,
            pokemonDetails,
          ],
        ),
      );
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
    print(state);
  }
}
