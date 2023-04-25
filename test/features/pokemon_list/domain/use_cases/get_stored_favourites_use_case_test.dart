import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonListRepository =
      MockPokemonListRepository();

  final GetStoredFavouritesUseCase useCase =
      GetStoredFavouritesUseCase(pokemonListRepository);

  group('GetStoredFavouritesUseCase', () {
    test(
      'should correctly propagate the call to repository and return stored '
      'favourites pokemon from local storage on a successful call',
      () {
        // Arrange
        when(pokemonListRepository.getStoredFavourites)
            .thenReturn(tPokemonDetailsList);

        // Act
        final result = useCase.call();

        // Assert
        verify(pokemonListRepository.getStoredFavourites).called(1);
        expect(result, tPokemonDetailsList);
      },
    );
  });
}
