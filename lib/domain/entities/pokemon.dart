import 'package:session09_app_pokedex/domain/entities/pokemon_type.dart';
import 'package:session09_app_pokedex/domain/entities/version_class.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon_move.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon_sprites.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon_stat.dart';

class Pokemon {
  final List<AbilityElement> abilities;
  final List<GameIndex> gameIndices;
  final List<Move> moves;
  final String name;
  final Sprites sprites;
  final List<Stat> stats;
  final List<TypePokemon> types;

  Pokemon({
    required this.abilities,
    required this.gameIndices,
    required this.moves,
    required this.name,
    required this.sprites,
    required this.stats,
    required this.types,
  });
}

class AbilityElement {
  final VersionClass ability;

  AbilityElement({
    required this.ability,
  });
}

class GameIndex {
  final VersionClass version;

  GameIndex({
    required this.version,
  });
}
