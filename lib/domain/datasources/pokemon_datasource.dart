import 'package:session09_app_pokedex/domain/entities/pokemon.dart';

abstract class PokemonDatasource {
  // method datasource
  Future<Pokemon> getPokemonPresentation({int id});
  // use case
  void addListPokemons(Pokemon pokemon);
  Future<List<Pokemon>> getPokemons();
  Future<Pokemon> getPokemonDetails();
  void getPreviousPokemon({int idPrevious});
}
