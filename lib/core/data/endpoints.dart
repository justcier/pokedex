class Endpoints {
  static const String apiUrl = 'https://pokeapi.co/api/v2/';
  static const String pokemonList = 'pokemon';
  static String pokemonDetails(String idOrName) => 'pokemon/$idOrName';
  static String pokemonSpecies(String id) => 'pokemon-species/$id';
}
