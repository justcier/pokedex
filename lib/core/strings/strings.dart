abstract class Strings {
  static const String searchMessage = 'Choose your Pokemon!';
  static const String appBarHomePageTitle = 'Pokedex';
  static const String pokemonDetailWeightLabel = 'Weight';
  static const String pokemonDetailHeightLabel = 'Height';
  static const String pokemonDetailsStatsLabel = 'Base Stats';
  static const String expStatFullName = 'experience';
  static const String bottomNavigationBarOption1 = 'Home';
  static const String bottomNavigationBarOption2 = 'Favourites';
  static const String searchLabel = 'Choose your Pokemon!';
  static const String backButton = 'Back';
  static const String goToDetailsButton = 'Go to details!';

  static String pokemonDetailWeightValue(int weight) {
    return '${weight / 10} kg';
  }

  static String pokemonDetailHeightValue(int height) {
    return '${height / 10} m';
  }

  static String errorViewWidgetMessage(String textFieldValue) {
    return 'Pokemon with name:\n\n \'$textFieldValue\' \n\ndoes not exist!'
        '\n\nTry to search again.';
  }
}
