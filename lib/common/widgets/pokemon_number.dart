import 'package:flutter/material.dart';

class PokemonNumber extends StatelessWidget {
  final int id;
  final TextStyle style;

  const PokemonNumber({
    required this.id,
    required this.style,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _parsePokemonId(id),
      style: style,
    );
  }

  String _parsePokemonId(int pokemonId) {
    return '#${'O' * (3 - pokemonId.toString().length)}$pokemonId';
  }
}
