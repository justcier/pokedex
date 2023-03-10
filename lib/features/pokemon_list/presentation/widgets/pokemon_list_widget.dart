import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

class PokemonListWidget extends StatelessWidget {
  final PokemonList pokemonList;

  const PokemonListWidget({
    required this.pokemonList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getIt.get<PokemonListRemoteDataSource>().getAllPokemon();
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Center(
              child: SizedBox(
            height: 150,
            width: 200,
            child: ListTile(
              leading: Image.network(
                  'https://static.wikia.nocookie.net/pokemon/images/2/21/001Bulbasaur.png/revision/latest?cb=20200620223551'),
              title: Text('pika'),
            ),
          ));
        });
  }
}
