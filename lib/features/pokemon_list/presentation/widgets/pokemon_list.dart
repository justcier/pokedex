import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon/pokemon.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemonList;

  const PokemonList({
    required this.pokemonList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getIt.get<PokemonListRemoteDataSource>().getAllPokemon();
    return ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          return Center(
              child: SizedBox(
            height: 150,
            width: 200,
            child: ListTile(
              leading: Image.network(pokemonList[index].pokemonImageUrl),
              title: Text(pokemonList[index].pokemonName),
            ),
          ));
        });
  }
}
