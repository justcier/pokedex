import 'dart:convert';

import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

import 'fixtures/fixture_reader.dart';

final PokemonList tPokemonList = PokemonList.fromJson(
  jsonDecode(fixture(Fixtures.pokemonList)),
);
