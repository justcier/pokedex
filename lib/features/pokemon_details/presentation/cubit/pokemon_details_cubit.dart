import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/flavour_text/flavor_text.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_species_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';
import 'package:collection/collection.dart';

@injectable
class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit() : super(PokemonDetailsState.initial());

  Future<void> getPokemonSpecies(String id) async {
    emit(state.copyWith(status: PokemonDetailsStateStatus.loading));

    final PokemonSpecies pokemonSpecies =
        await (await getIt.getAsync<GetPokemonSpeciesUseCase>()).call(id);

    final FlavorTextEntry? flavorTextEntry = pokemonSpecies.flavorTextEntries
        .firstWhereOrNull((el) => el.language.name == 'en');

    if (flavorTextEntry != null) {
      emit(
        state.copyWith(
          status: PokemonDetailsStateStatus.loaded,
          flavorText: flavorTextEntry.flavorText,
        ),
      );
    } else {
      emit(state.copyWith(status: PokemonDetailsStateStatus.loaded));
    }
  }
}
