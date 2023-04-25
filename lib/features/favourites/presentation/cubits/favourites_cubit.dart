import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

@lazySingleton
class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(FavouritesState.initial());

  Future<void> toggleFavouriteState(PokemonDetails pokemonDetails) async {
    if (!state.favouritesList.contains(pokemonDetails)) {
      final newListToEmit = [...state.favouritesList, pokemonDetails];

      emit(state.copyWith(favouritesList: newListToEmit));
      (await getIt.getAsync<StoreFavouritesUseCase>()).call(newListToEmit);

      // final List<Category> storedWinnerCategories =
      // (await getIt.getAsync<GetStoredWinnerCategoriesUseCase>()).call();
      // // Added new category to winner list.
      // final List<Category> newCategoriesToStore = [
      //   state.category!,
      //   ...storedWinnerCategories
      // ];
      // (await getIt.getAsync<StoreWinnerCategoriesUseCase>())
      //     .call(newCategoriesToStore);
      // emit(state.copyWith(isWinnerDetermined: true));
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
    print(state.favouritesList.length);
  }
}
