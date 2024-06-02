import 'package:session09_app_pokedex/domain/entities/pokemon_stat.dart';
import 'package:session09_app_pokedex/infrastructure/models/version_class_model.dart';

class StatModel {
  final int baseStat;
  final int effort;
  final VersionClassModel stat;

  StatModel({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatModel.fromJson(Map<String, dynamic> json) => StatModel(
        baseStat: json['base_stat'],
        effort: json['effort'],
        stat: VersionClassModel.fromJson(json['stat']),
      );

  Stat toStatEntity() => Stat(
        baseStat: baseStat,
        effort: effort,
        stat: stat.toVersionClassEntity(),
      );
}
