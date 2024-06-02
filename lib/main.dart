import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session09_app_pokedex/infrastructure/datasources/poke_api_datasources_impl.dart';
import 'package:session09_app_pokedex/infrastructure/repositories/pokemon_repository_impl.dart';
import 'package:session09_app_pokedex/presentation/providers/pokemon_api/pokemon_provider.dart';
import 'package:session09_app_pokedex/presentation/providers/theme/theme_provider.dart';
import 'package:session09_app_pokedex/config/router/app_router.dart';

void main() {
  final pokemonRepository = PokemonRepositoryImpl(
    pokemonDatasource: PokeApiDatasources(),
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => PokemonProvider(
        pokemonRepository: pokemonRepository,
      )..loadFirstPokemon(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex App',
      theme: theme.themeData(),
      routerConfig: appRouter,
    );
  }
}
