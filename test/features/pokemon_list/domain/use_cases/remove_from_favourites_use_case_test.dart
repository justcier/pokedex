import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/remove_from_favourites_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonListRepository =
      MockPokemonListRepository();

  final RemoveFromFavouritesUseCase useCase =
      RemoveFromFavouritesUseCase(pokemonListRepository);

  setUpAll(() {
    registerFallbackValue(tPokemonDetails);
  });

  group('RemoveFromFavouritesUseCase', () {
    test(
      'should correctly propagate call to repository, delete item and '
      'save new pokemonDetailsList on a successful call',
      () {
        // Arrange
        when(() =>
                pokemonListRepository.removeFromFavourites.call(captureAny()))
            .thenAnswer((_) async {});

        // Act
        useCase.call(tPokemonDetailsList.first);

        // Assert
        verify(() => pokemonListRepository
            .removeFromFavourites(tPokemonDetailsList.first)).called(1);
      },
    );
  });
}
