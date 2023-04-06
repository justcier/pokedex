import 'package:flutter/material.dart';
import 'package:pokedex_rest/core/strings/strings.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/stats/stats.dart';
import 'package:pokedex_rest/style/color_tokens.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/utils/pokemon_stats_utils.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

class PokemonDetailsStatsContainer extends StatelessWidget {
  final List<Stat> stats;
  final int baseExperience;

  const PokemonDetailsStatsContainer({
    required this.stats,
    required this.baseExperience,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.sizeXL),
      decoration: const BoxDecoration(
        color: ColorTokens.darkBackgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimensions.sizeL),
        ),
      ),
      child: Column(
        children: [
          Text(
            Strings.pokemonDetailsStatsLabel,
            style: TextStyleTokens.mainTitle,
          ),
          Container(
            padding: const EdgeInsets.all(Dimensions.sizeXL),
            child: Column(
              children: [
                Column(
                  children: stats.map((statObject) {
                    final int statValue = statObject.baseStat;
                    final String statName = statObject.stat.name;

                    if (statName.contains(specialStatLabel)) {
                      return const SizedBox.shrink();
                    }

                    return Container(
                      padding: const EdgeInsets.all(Dimensions.sizeM),
                      child: _BaseStatsRow(
                          statName: statName, statValue: statValue),
                    );
                  }).toList(),
                ),
                Container(
                  padding: const EdgeInsets.all(Dimensions.sizeM),
                  child: _BaseStatsRow(
                    statName: 'experience',
                    statValue: baseExperience,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BaseStatsRow extends StatelessWidget {
  final String statName;
  final int statValue;

  const _BaseStatsRow({
    required this.statName,
    required this.statValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          pokemonNameStatsToShortcuts[statName]!,
          style: TextStyleTokens.mainTitle,
        ),
        Container(
          width: 250,
          color: pokemonStatsToColorMap[statName],
          child: Text(
            statValue.toString(),
            style: TextStyleTokens.mainTitle,
          ),
        ),
      ],
    );
  }
}
