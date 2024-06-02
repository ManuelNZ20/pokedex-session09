import 'package:session09_app_pokedex/domain/entities/pokemon_sprites.dart';

class SpritesModel {
  final String backDefault;
  final dynamic backFemale;
  final String backShiny;
  final dynamic backShinyFemale;
  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;
  final OtherModel? other;

  SpritesModel({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    this.other,
  });

  factory SpritesModel.fromJson(Map<String, dynamic> json) => SpritesModel(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
      other: json['other'] == null ? null : OtherModel.fromJson(json['other']));

  Sprites toSpritesEntity() => Sprites(
        backDefault: backDefault,
        backFemale: backFemale,
        backShiny: backShiny,
        backShinyFemale: backShinyFemale,
        frontDefault: frontDefault,
        frontFemale: frontFemale,
        frontShiny: frontShiny,
        frontShinyFemale: frontShinyFemale,
        other: other?.toOtherEntity(),
      );
}

class OtherModel {
  final DreamWorldModel dreamWorld;
  final OfficialArtworkModel officialArtwork;
  final SpritesModel showdown;

  OtherModel({
    required this.dreamWorld,
    required this.officialArtwork,
    required this.showdown,
  });

  factory OtherModel.fromJson(Map<String, dynamic> json) => OtherModel(
        dreamWorld: DreamWorldModel.fromJson(json['dream_world']),
        officialArtwork:
            OfficialArtworkModel.fromJson(json['official-artwork']),
        showdown: SpritesModel.fromJson(json['showdown']),
      );

  Other toOtherEntity() => Other(
        dreamWorld: dreamWorld.toDreamWorldEntity(),
        officialArtwork: officialArtwork.toOfficialArtworkEntity(),
        showdown: showdown.toSpritesEntity(),
      );
}

class DreamWorldModel {
  final String frontDefault;
  final dynamic frontFemale;

  DreamWorldModel({
    required this.frontDefault,
    required this.frontFemale,
  });

  factory DreamWorldModel.fromJson(Map<String, dynamic> json) =>
      DreamWorldModel(
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
      );

  DreamWorld toDreamWorldEntity() => DreamWorld(
        frontDefault: frontDefault,
        frontFemale: frontFemale,
      );
}

class OfficialArtworkModel {
  final String frontDefault;
  final String frontShiny;

  OfficialArtworkModel({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory OfficialArtworkModel.fromJson(Map<String, dynamic> json) =>
      OfficialArtworkModel(
        frontDefault: json['front_default'],
        frontShiny: json['front_shiny'],
      );

  OfficialArtwork toOfficialArtworkEntity() => OfficialArtwork(
        frontDefault: frontDefault,
        frontShiny: frontShiny,
      );
}
