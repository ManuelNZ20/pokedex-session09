import 'package:flutter/material.dart';
import 'package:session09_app_pokedex/config/helpers/poke_sprites.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';

class ListPathSprites extends StatelessWidget {
  const ListPathSprites({super.key, required this.pokemon});
  final Pokemon pokemon;
  @override
  Widget build(BuildContext context) {
    final pokeSprites = PokeSprites(pokemon: pokemon)..addPaths();
    return ListView.builder(
      itemCount: pokeSprites.pathImgs.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final pokemonSprite = pokeSprites.pathImgs[index];
        return SizedBox(
          width: 150,
          // height: 150,
          child: Image.network(
            pokemonSprite,
          ),
        );
      },
    );
  }
}
