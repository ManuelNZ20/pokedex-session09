import 'package:session09_app_pokedex/domain/entities/version_class.dart';

class Move {
  final VersionClass move;
  final List<VersionGroupDetail> versionGroupDetails;

  Move({
    required this.move,
    required this.versionGroupDetails,
  });
}

class VersionGroupDetail {
  final int levelLearnedAt;

  VersionGroupDetail({
    required this.levelLearnedAt,
  });
}
