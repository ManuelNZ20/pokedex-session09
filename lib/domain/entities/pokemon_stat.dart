import 'package:session09_app_pokedex/domain/entities/version_class.dart';

class Stat {
  final int baseStat;
  final int effort;
  final VersionClass stat;

  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
}
