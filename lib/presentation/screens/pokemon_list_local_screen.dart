import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:session09_app_pokedex/presentation/providers/pokemon_api/pokemon_provider.dart';
import 'package:session09_app_pokedex/presentation/widgets/tag_type.dart';

class PokemonListLocalScreen extends StatelessWidget {
  const PokemonListLocalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonProvider = context.watch<PokemonProvider>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.go('/');
          },
        ),
        title: const Text('List Pokemons Local'),
      ),
      body: ListView.builder(
        itemCount: pokemonProvider.pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = pokemonProvider.pokemons[index];
          return GestureDetector(
            onTap: () {
              context.push('/listPokemon/details', extra: pokemon);
            },
            child: Card(
              child: ListTile(
                leading: Image.network(
                  pokemon.sprites.other!.showdown.frontDefault,
                  width: 70,
                ),
                title: Text(pokemon.name),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...pokemon.types
                        .map((type) => TagsTypes(name: type.type.name)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
