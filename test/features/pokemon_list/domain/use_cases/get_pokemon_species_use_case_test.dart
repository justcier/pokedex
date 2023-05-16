import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_species_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonRepository = MockPokemonListRepository();
  final GetPokemonSpeciesUseCase useCase =
      GetPokemonSpeciesUseCase(pokemonRepository);

  group('GetPokemonSpeciesUseCase', () {
    test(
      'should correctly propagate the call to repository and return pokemon species on a successful call',
      () async {
        // Arrange
        when(() => pokemonRepository.getPokemonSpecies(captureAny()))
            .thenAnswer((_) async => tPokemonSpecies);

        // Act
        final result = await useCase.call(tId);

        // Assert
        verify(() => pokemonRepository.getPokemonSpecies(tId)).called(1);
        expect(result, tPokemonSpecies);
      },
    );
  });
}
