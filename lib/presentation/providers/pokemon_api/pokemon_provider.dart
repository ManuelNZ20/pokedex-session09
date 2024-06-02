import 'package:flutter/widgets.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/domain/repositories/pokemon_repository.dart';

class PokemonProvider extends ChangeNotifier {
  final PokemonRepository pokemonRepository;
  bool initialLoading = true;
  List<Pokemon> pokemons = [];
  int post = 1;
  PokemonProvider({
    required this.pokemonRepository,
  });

  Future<void> loadFirstPokemon() async {
    final pokemon = await getPokemon();
    pokemons.add(pokemon);
    initialLoading = false;
    notifyListeners();
  }

  Future<Pokemon> getPokemon() async {
    final pokemon = await pokemonRepository.getPokemonPresentation(id: post);
    return pokemon;
  }

  Future<void> addPokemon() async {
    final pokemon = await getPokemon();
    pokemons.add(pokemon);
    notifyListeners();
  }

  void nextPokemon() {
    post++;
    addPokemon();
    notifyListeners();
  }

  void previusPokemon() {
    if (post == 1) return;
    post--;
    notifyListeners();
  }
}
