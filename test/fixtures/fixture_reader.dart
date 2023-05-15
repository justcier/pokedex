import 'dart:io';

abstract class Fixtures {
  static const pokemonList = 't_pokemon_json.json';
  static const pokemonDetails = 't_pokemon_details.json';
  static const pokemonSpecies = 't_pokemon_species.json';
}

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();
