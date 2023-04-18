import 'package:flutter/material.dart';
import 'package:pokedex_rest/style/color_tokens.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  const CommonBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CommonBottomNavigationBar> createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorTokens.secondaryColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favourites',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorTokens.darkBackgroundColor,
      unselectedItemColor: ColorTokens.white,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
