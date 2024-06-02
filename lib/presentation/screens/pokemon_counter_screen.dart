import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/presentation/providers/pokemon_api/pokemon_provider.dart';
import 'package:session09_app_pokedex/presentation/providers/theme/theme_provider.dart';
import 'package:session09_app_pokedex/presentation/widgets/container_pokemon.dart';
import 'package:session09_app_pokedex/presentation/widgets/floating_icon_button.dart';
import 'package:session09_app_pokedex/presentation/widgets/list_sprites_pokemon.dart';

class PokemonCounterScreen extends StatelessWidget {
  const PokemonCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonProvider = context.watch<PokemonProvider>();
    final theme = context.watch<ThemeProvider>();
    final size = MediaQuery.of(context).size;
    Pokemon? pokemon;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        actions: [
          IconButton(
            onPressed: () {
              theme.changeTheme();
            },
            icon: Icon(
              theme.themeLight ? Icons.light_mode : Icons.dark_mode,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: FutureBuilder(
            future: pokemonProvider.getPokemon(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                pokemon = snapshot.data;
                return SizedBox.expand(
                  child: Stack(children: [
                    ContainerPokemon(
                      pokemon: pokemon!,
                    ),
                    Positioned(
                      bottom: 100,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: size.width,
                        height: 100,
                        child: ListPathSprites(pokemon: pokemon!),
                      ),
                    ),
                  ]),
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingIconButton(
            onPressed: () {
              pokemonProvider.nextPokemon();
              theme.changeColorSchemeSeed(pokemon!.types.first.type.name);
              // print('Type: ${theme.typePokemon}');
            },
            icon: Icons.navigate_next_rounded,
            label: 'Next',
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingIconButton(
            onPressed: () => context.go('/listPokemon'),
            icon: Icons.view_list,
            label: 'List',
          ),
        ],
      ),
    );
  }
}
