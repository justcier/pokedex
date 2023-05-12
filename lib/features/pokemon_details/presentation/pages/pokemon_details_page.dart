import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/common/widgets/common_scaffold.dart';
import 'package:pokedex_rest/common/widgets/favourite_icon.dart';
import 'package:pokedex_rest/core/extensions/build_context_extensions.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_cubit.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_state.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_app_bar.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_body_attributes_row.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_stats_container.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/widgets/pokemon_details_types_row.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:pokedex_rest/style/dimensions.dart';
import 'package:pokedex_rest/style/text_style_tokens.dart';

@RoutePage()
class PokemonDetailsPage extends StatefulWidget {
  final PokemonDetails pokemonDetails;

  const PokemonDetailsPage({
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  final PokemonDetailsCubit _pokemonDetailsCubit = getIt<PokemonDetailsCubit>();

  @override
  void initState() {
    _pokemonDetailsCubit.getPokemonSpecies(widget.pokemonDetails.id);
    super.initState();
  }

  @override
  void dispose() {
    _pokemonDetailsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.screenHeight / 3),
        child: PokemonDetailsAppBar(pokemonDetails: widget.pokemonDetails),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(Dimensions.sizeL),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimensions.sizeXXL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.pokemonDetails.name,
                      style: TextStyleTokens.mainTitleBig,
                    ),
                    const SizedBox(width: Dimensions.sizeM),
                    FavouriteIcon(
                      pokemonDetails: widget.pokemonDetails,
                    ),
                  ],
                ),
              ),
              PokemonDetailsTypesRow(types: widget.pokemonDetails.types),
              const SizedBox(height: Dimensions.sizeXXL),
              PokemonDetailsBodyAttributesRow(
                weight: widget.pokemonDetails.weight,
                height: widget.pokemonDetails.height,
              ),
              BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
                bloc: _pokemonDetailsCubit,
                builder: (_, PokemonDetailsState state) {
                  final String? flavorText = state.flavorText;

                  if (state.isLoading || flavorText == null) {
                    return const SizedBox.shrink();
                  }

                  return Text(flavorText);
                },
              ),
              const SizedBox(height: Dimensions.sizeXXL),
              PokemonDetailsStatsContainer(
                stats: widget.pokemonDetails.stats,
                baseExperience: widget.pokemonDetails.baseExperience,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
