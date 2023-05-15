import 'dart:convert';

import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';

import 'fixtures/fixture_reader.dart';

const String tId = '1';

final PokemonDetails tPokemonDetails = PokemonDetails.fromJson(
  jsonDecode(fixture(Fixtures.pokemonDetails)),
);

final PokemonSpecies tPokemonSpecies = PokemonSpecies.fromJson(
  jsonDecode(fixture(Fixtures.pokemonSpecies)),
);

final List<PokemonDetails> tPokemonDetailsList = [tPokemonDetails];
