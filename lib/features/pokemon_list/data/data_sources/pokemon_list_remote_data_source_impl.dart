import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/data/endpoints.dart';
import 'package:pokedex_rest/core/errors/exceptions.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex_rest/services/network_service/network_service.dart';

@Injectable(as: PokemonListRemoteDataSource)
class PokemonListRemoteDataSourceImpl implements PokemonListRemoteDataSource {
  final NetworkService networkService;

  PokemonListRemoteDataSourceImpl({required this.networkService});

  @override
  Future<PokemonDetails> getPokemonDetails(String idOrName) async {
    try {
      final response =
          await networkService.get(Endpoints.pokemonDetails(idOrName));
      return PokemonDetails.fromJson(json.decode(response.body));
    } catch (error) {
      throw ServerException();
    }
  }

  @override
  Future<PokemonSpecies> getPokemonSpecies(String id) async {
    try {
      final response = await networkService.get(Endpoints.pokemonSpecies(id));
      return PokemonSpecies.fromJson(json.decode(response.body));
    } catch (error) {
      throw ServerException();
    }
  }
}
