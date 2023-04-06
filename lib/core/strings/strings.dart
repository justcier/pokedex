abstract class Strings {
  static const String searchMessage = 'Choose your Pokemon!';
  static const String appBarHomePageTitle = 'Pokedex';
  static const String pokemonDetailWeightLabel = 'Weight';
  static const String pokemonDetailHeightLabel = 'Height';
  static const String pokemonDetailsStatsLabel = 'Base Stats';

  static String pokemonDetailWeightValue(int weight) {
    return '${weight / 10} kg';
  }

  static String pokemonDetailHeightValue(int height) {
    return '${height / 10} m';
  }
}
