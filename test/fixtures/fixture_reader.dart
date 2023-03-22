import 'dart:io';

abstract class Fixtures {
  static const pokemonList = 't_pokemon_json.json';
}

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();
