class Sprites {
  final String backDefault;
  final dynamic backFemale;
  final String backShiny;
  final dynamic backShinyFemale;
  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;
  final Other? other;

  Sprites({
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
}

class Other {
  final DreamWorld dreamWorld;
  final OfficialArtwork officialArtwork;
  final Sprites showdown;

  Other({
    required this.dreamWorld,
    required this.officialArtwork,
    required this.showdown,
  });
}

class DreamWorld {
  final String frontDefault;
  final dynamic frontFemale;

  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });
}

class OfficialArtwork {
  final String frontDefault;
  final String frontShiny;

  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });
}
