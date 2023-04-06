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

class _BaseStatsRow extends StatefulWidget {
  final String statName;
  final int statValue;

  const _BaseStatsRow({
    required this.statName,
    required this.statValue,
  });

  @override
  State<_BaseStatsRow> createState() => _BaseStatsRowState();
}

class _BaseStatsRowState extends State<_BaseStatsRow> {
  int statusValue = 1;
  static const statBarWidth = 250.0;
  static const statMaxValue = 300;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => statusValue = widget.statValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          pokemonNameStatsToShortcuts[widget.statName]!,
          style: TextStyleTokens.mainTitle,
        ),
        const SizedBox(width: Dimensions.sizeM),
        Flexible(
          child: Stack(
            children: [
              Container(
                width: statBarWidth,
                height: Dimensions.sizeXL,
                color: Colors.white,
              ),
              AnimatedContainer(
                width: statusValue.toDouble() * statBarWidth / statMaxValue,
                height: Dimensions.sizeXL,
                alignment: Alignment.centerRight,
                color: pokemonStatsToColorMap[widget.statName],
                duration: const Duration(milliseconds: 600),
                child: Padding(
                  padding: const EdgeInsets.only(right: Dimensions.sizeS),
                  child: Text(
                    widget.statValue.toString(),
                    style: TextStyleTokens.mainTitleWhite,
                  ),
                ),
              ),
            ],
            // children: Text(
            //   statValue.toString(),
            //   style: TextStyleTokens.mainTitle,
            // ),
          ),
        ),
      ],
    );
  }
}
