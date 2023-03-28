import 'dart:io';

abstract class Fixtures {
  static const pokemonList = 't_pokemon_json.json';
  static const pokemonDetails = 't_pokemon_details.json';
}

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();
