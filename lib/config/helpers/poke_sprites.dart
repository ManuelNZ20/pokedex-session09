import 'package:session09_app_pokedex/domain/entities/pokemon.dart';

class PokeSprites {
  PokeSprites({required this.pokemon});
  final Pokemon pokemon;
  final pathImgs = <String>[];

  void addPaths() {
    pathImgs.add(pokemon.sprites.other!.showdown.frontDefault);
    pathImgs.add(pokemon.sprites.other!.showdown.backDefault);
    pathImgs.add(pokemon.sprites.other!.showdown.frontShiny);
    pathImgs.add(pokemon.sprites.other!.showdown.backShiny);
    pathImgs.add(pokemon.sprites.frontDefault);
    pathImgs.add(pokemon.sprites.frontShiny);
    pathImgs.add(pokemon.sprites.backDefault);
    pathImgs.add(pokemon.sprites.backShiny);
  }
}
