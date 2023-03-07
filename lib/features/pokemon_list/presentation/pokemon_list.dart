import 'package:flutter/material.dart';

class PokemonList extends StatelessWidget {
  final List<String> pokemonList;
  const PokemonList({
    required this.pokemonList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          return Center(
              child: SizedBox(
            height: 150,
            width: 150,
            child: ListTile(title: Text(pokemonList[index])),
          ));
        });
  }
}
