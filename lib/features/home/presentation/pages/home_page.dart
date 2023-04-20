import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/favourites/presentation/pages/favourites_page.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/pages/pokemon_list_page.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final screens = [
    const PokemonListPage(),
    const FavouritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: screens[selectedIndex],
      navigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: ColorTokens.secondaryColor,
        selectedLabelStyle: TextStyleTokens.mainDescription,
        unselectedLabelStyle: TextStyleTokens.mainDescription
            .copyWith(fontSize: Dimensions.sizeML),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: Strings.bottomNavigationBarOption1,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: Strings.bottomNavigationBarOption2,
          ),
        ],
        selectedItemColor: ColorTokens.darkBackgroundColor,
        unselectedItemColor: ColorTokens.white,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
