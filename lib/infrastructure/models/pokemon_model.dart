import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/infrastructure/models/pokemon_move_model.dart';
import 'package:session09_app_pokedex/infrastructure/models/pokemon_sprites_model.dart';
import 'package:session09_app_pokedex/infrastructure/models/pokemon_stat_model.dart';
import 'package:session09_app_pokedex/infrastructure/models/pokemon_type_model.dart';
import 'package:session09_app_pokedex/infrastructure/models/version_class_model.dart';

class PokemonModel {
  final List<AbilityElementModel> abilities;
  final List<GameIndexModel> gameIndices;
  final List<MoveModel> moves;
  final String name;
  final SpritesModel sprites;
  final List<StatModel> stats;
  final List<TypePokemonModel> types;

  PokemonModel({
    required this.abilities,
    required this.gameIndices,
    required this.moves,
    required this.name,
    required this.sprites,
    required this.stats,
    required this.types,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        abilities: List<AbilityElementModel>.from(
            json['abilities'].map((x) => AbilityElementModel.fromJson(x))),
        gameIndices: List<GameIndexModel>.from(
            json['game_indices'].map((x) => GameIndexModel.fromJson(x))),
        moves: List<MoveModel>.from(
            json['moves'].map((x) => MoveModel.fromJson(x))),
        name: json['name'],
        sprites: SpritesModel.fromJson(json['sprites']),
        stats: List<StatModel>.from(
            json['stats'].map((x) => StatModel.fromJson(x))),
        types: List<TypePokemonModel>.from(
            json['types'].map((x) => TypePokemonModel.fromJson(x))),
      );

  Pokemon toPokemonEntity() => Pokemon(
        abilities: abilities
            .map((ability) => ability.toAbilityElementEntity())
            .toList(),
        gameIndices:
            gameIndices.map((version) => version.toGameIndexEntity()).toList(),
        moves: moves.map((e) => e.toMoveEntity()).toList(),
        name: name,
        sprites: sprites.toSpritesEntity(),
        stats: stats.map((stat) => stat.toStatEntity()).toList(),
        types: types.map((type) => type.toTypePokemonEntity()).toList(),
      );
}

class AbilityElementModel {
  final VersionClassModel ability;

  AbilityElementModel({
    required this.ability,
  });

  factory AbilityElementModel.fromJson(Map<String, dynamic> json) =>
      AbilityElementModel(
        ability: VersionClassModel.fromJson(json['ability']),
      );

  AbilityElement toAbilityElementEntity() => AbilityElement(
        ability: ability.toVersionClassEntity(),
      );
}

class GameIndexModel {
  final VersionClassModel version;

  GameIndexModel({
    required this.version,
  });

  factory GameIndexModel.fromJson(Map<String, dynamic> json) => GameIndexModel(
        version: VersionClassModel.fromJson(json['version']),
      );
  GameIndex toGameIndexEntity() => GameIndex(
        version: version.toVersionClassEntity(),
      );
}
