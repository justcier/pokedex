import 'package:flutter/material.dart';

const String specialStatLabel = 'special';

Map<String, Color> pokemonStatsToColorMap = {
  'hp': Colors.red,
  'attack': Colors.grey,
  'defense': Colors.blue,
  'speed': Colors.blueGrey,
  'experience': Colors.green,
};

Map<String, String> pokemonNameStatsToShortcuts = {
  'hp': 'hp',
  'attack': 'atk',
  'defense': 'def',
  'speed': 'spd',
  'experience': 'exp',
};
