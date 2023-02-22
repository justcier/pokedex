import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';

final List<String> testPokemon = [
  "Pokemon1",
  "Pokemon2",
  "Pokemon3",
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: ListView.builder(
          itemCount: testPokemon.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(testPokemon[index]));
          }),
      title: "Pokedex",
    );
  }
}
