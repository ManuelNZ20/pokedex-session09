import 'package:session09_app_pokedex/domain/entities/pokemon_type.dart';
import 'package:session09_app_pokedex/infrastructure/models/version_class_model.dart';

class TypePokemonModel {
  final int slot;
  final VersionClassModel type;

  TypePokemonModel({
    required this.slot,
    required this.type,
  });

  factory TypePokemonModel.fromJson(Map<String, dynamic> json) =>
      TypePokemonModel(
        slot: json['slot'],
        type: VersionClassModel.fromJson(json['type']),
      );
  TypePokemon toTypePokemonEntity() => TypePokemon(
        slot: slot,
        type: type.toVersionClassEntity(),
      );
}
