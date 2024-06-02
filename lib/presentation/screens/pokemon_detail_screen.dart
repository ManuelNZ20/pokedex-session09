import 'package:flutter/material.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/presentation/widgets/list_sprites_pokemon.dart';
import 'package:session09_app_pokedex/presentation/widgets/tag_type.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({
    super.key,
    required this.pokemon,
  });
  final Pokemon pokemon;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        children: [
          Image.network(
            pokemon.sprites.frontDefault,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          const Text('Types'),
          SizedBox(
            width: size.width,
            height: 50,
            child: Row(children: [
              ...pokemon.types.map(
                (type) => TagsTypes(name: type.type.name),
              ),
            ]),
          ),
          const Text('Game Index'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 30,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              ...pokemon.gameIndices.map(
                (game) => TagsTypes(name: game.version.name),
              ),
            ]),
          ),
          const Text('Moves'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...pokemon.moves.map(
                  (move) => TagsTypes(name: move.move.name),
                ),
              ],
            ),
          ),
          const Text('Stat'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...pokemon.stats.map(
                  (move) => TagsTypes(name: move.stat.name),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Sprites'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width,
            height: 100,
            child: ListPathSprites(pokemon: pokemon),
          ),
        ],
      ),
    );
  }
}
