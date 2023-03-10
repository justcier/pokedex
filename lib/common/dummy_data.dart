import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

const PokemonList testPokemonList = PokemonList(
  results: [
    Pokemon(
      name: 'Pikachu',
      imageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/6/6c/Char-pikachu.png/revision/latest?cb=20190430034300',
    ),
    Pokemon(
      name: 'Bulbasaur',
      imageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/2/21/001Bulbasaur.png/revision/latest?cb=20200620223551',
    ),
    Pokemon(
      name: 'Charmander',
      imageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/7/73/004Charmander.png/revision/latest/scale-to-width-down/1000?cb=20200620223744',
    ),
    Pokemon(
      name: 'Squirtle',
      imageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/3/39/007Squirtle.png/revision/latest?cb=20200620223922',
    ),
  ],
);
