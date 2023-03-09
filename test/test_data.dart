import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

const PokemonList tPokemonList = PokemonList(
  data: [
    Pokemon(
      pokemonName: 'Pikachu',
      pokemonImageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/6/6c/Char-pikachu.png/revision/latest?cb=20190430034300',
    ),
    Pokemon(
      pokemonName: 'Bulbasaur',
      pokemonImageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/2/21/001Bulbasaur.png/revision/latest?cb=20200620223551',
    ),
    Pokemon(
      pokemonName: 'Charmander',
      pokemonImageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/7/73/004Charmander.png/revision/latest/scale-to-width-down/1000?cb=20200620223744',
    ),
    Pokemon(
      pokemonName: 'Squirtle',
      pokemonImageUrl:
          'https://static.wikia.nocookie.net/pokemon/images/3/39/007Squirtle.png/revision/latest?cb=20200620223922',
    ),
  ],
);
