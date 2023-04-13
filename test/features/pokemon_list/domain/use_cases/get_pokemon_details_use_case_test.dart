import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRepository pokemonRepository = MockPokemonListRepository();
  final GetPokemonDetailsUseCase useCase =
      GetPokemonDetailsUseCase(pokemonRepository);

  group('GetPokemonDetailsUseCase', () {
    test(
      'should correctly propagate the call to repository and return pokemon details on a successful call',
      () async {
        // Arrange
        when(() => pokemonRepository.getPokemonDetails(tId))
            .thenAnswer((_) async => tPokemonDetails);

        // Act
        final result = await useCase.call(tId);

        // Assert
        verify(() => pokemonRepository.getPokemonDetails(tId)).called(1);
        expect(result, tPokemonDetails);
      },
    );
  });
}
