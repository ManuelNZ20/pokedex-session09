import 'package:session09_app_pokedex/domain/entities/pokemon_move.dart';
import 'package:session09_app_pokedex/infrastructure/models/version_class_model.dart';

class MoveModel {
  final VersionClassModel move;
  final List<VersionGroupDetailModel> versionGroupDetails;

  MoveModel({
    required this.move,
    required this.versionGroupDetails,
  });

  factory MoveModel.fromJson(Map<String, dynamic> json) => MoveModel(
        move: VersionClassModel.fromJson(json['move']),
        versionGroupDetails: List<VersionGroupDetailModel>.from(
            json["version_group_details"]
                .map((x) => VersionGroupDetailModel.fromJson(x))),
      );

  Move toMoveEntity() => Move(
        move: move.toVersionClassEntity(),
        versionGroupDetails: versionGroupDetails
            .map((e) => e.toVersionGroupDetailEntity())
            .toList(),
      );
}

class VersionGroupDetailModel {
  final int levelLearnedAt;

  VersionGroupDetailModel({
    required this.levelLearnedAt,
  });

  factory VersionGroupDetailModel.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetailModel(levelLearnedAt: json['level_learned_at']);

  VersionGroupDetail toVersionGroupDetailEntity() => VersionGroupDetail(
        levelLearnedAt: levelLearnedAt,
      );
}
