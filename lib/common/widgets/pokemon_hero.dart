import 'package:flutter/material.dart';

class PokemonHero extends StatelessWidget {
  final String pokemonImageUrl;
  final int pokemonId;

  const PokemonHero({
    required this.pokemonImageUrl,
    required this.pokemonId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: pokemonId,
      child: Image(
        image: NetworkImage(pokemonImageUrl),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
