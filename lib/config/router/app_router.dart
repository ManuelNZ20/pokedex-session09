import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/presentation/screens/pokemon_counter_screen.dart';
import 'package:session09_app_pokedex/presentation/screens/pokemon_detail_screen.dart';
import 'package:session09_app_pokedex/presentation/screens/pokemon_list_local_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const PokemonCounterScreen(),
    ),
    GoRoute(
        name: 'listPokemon',
        path: '/listPokemon',
        builder: (context, state) => const PokemonListLocalScreen(),
        routes: [
          GoRoute(
            name: 'details',
            path: 'details',
            builder: (context, state) {
              final pokemon = state.extra as Pokemon?;
              if (pokemon == null) {
                return const Scaffold(
                  body: Center(child: Text('Pokemon data is missing')),
                );
              }
              return PokemonDetailScreen(pokemon: pokemon);
            },
          ),
        ]),
  ],
);
