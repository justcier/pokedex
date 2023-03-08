import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonRepository = MockPokemonListRepository();
  final GetAllPokemonUseCase useCase = GetAllPokemonUseCase(pokemonRepository);

  group('GetAllPokemonUseCase', () {
    test(
        'should correctly propagate the call to repository and return all pokemon on a successful call',
        () async {
      // Arrange
      when(pokemonRepository.getAllPokemon)
          .thenAnswer((_) async => tPokemonList);

      // Act
      final result = await useCase.call();

      // Assert
      verify(pokemonRepository.getAllPokemon).called(1);
      expect(result, tPokemonList);
    });
  });
}
