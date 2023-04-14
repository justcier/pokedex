import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/add_to_favourites_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonListRepository =
      MockPokemonListRepository();

  final AddToFavouritesUseCase useCase =
      AddToFavouritesUseCase(pokemonListRepository);

  group('AddToFavouritesUseCase', () {
    test(
      'should correctly propagate pokemonDetails to repository on a successful call',
      () async {
        // Arrange
        when(
          () => pokemonListRepository.addToFavourites(captureAny()),
        ).thenAnswer((_) async => tPokemonDetails);

        // Act
        await useCase.call(tPokemonDetails);

        // Assert
        verify(
          () => pokemonListRepository.addToFavourites(tPokemonDetails),
        ).called(1);
      },
    );
  });
}
