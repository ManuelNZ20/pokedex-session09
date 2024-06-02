import 'package:session09_app_pokedex/domain/datasources/pokemon_datasource.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDatasource pokemonDatasource;

  PokemonRepositoryImpl({required this.pokemonDatasource});

  @override
  void addListPokemons(Pokemon pokemon) {}

  @override
  Future<Pokemon> getPokemonDetails() {
    throw UnimplementedError();
  }

  @override
  Future<Pokemon> getPokemonPresentation({int id = 1}) async {
    if (id == 1 || id == 0) {
      return pokemonDatasource.getPokemonPresentation(id: 1);
    }
    return pokemonDatasource.getPokemonPresentation(id: id);
  }

  @override
  Future<List<Pokemon>> getPokemons() {
    throw UnimplementedError();
  }

  @override
  void getPreviousPokemon({int idPrevious = 1}) {}
}
