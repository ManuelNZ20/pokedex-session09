import 'package:session09_app_pokedex/domain/datasources/pokemon_datasource.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/infrastructure/driver_adapter/api/pokemon_api/poke_api.dart';
import 'package:session09_app_pokedex/infrastructure/models/pokemon_model.dart';

class PokeApiDatasources implements PokemonDatasource {
  final responsePokeApi = GetPokeApi();
  @override
  void addListPokemons(Pokemon pokemon) {}

  @override
  Future<Pokemon> getPokemonDetails() {
    throw UnimplementedError();
  }

  @override
  Future<Pokemon> getPokemonPresentation({int id = 1}) async {
    final response = await responsePokeApi.getPokemon(id: id);
    final pokemon = PokemonModel.fromJson(response);
    return pokemon.toPokemonEntity();
  }

  @override
  Future<List<Pokemon>> getPokemons() {
    throw UnimplementedError();
  }

  @override
  void getPreviousPokemon({int idPrevious = 1}) {}
}
