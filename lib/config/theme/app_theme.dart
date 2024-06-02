import 'package:flutter/material.dart';

final Map<String, dynamic> colorsBackgroundPokemon = {
  'grass': const Color.fromRGBO(116, 203, 72, 1),
  'poison': const Color.fromRGBO(216, 128, 184, 1),
  'fire': const Color.fromRGBO(245, 125, 49, 1),
  'water': const Color.fromRGBO(100, 147, 235, 1),
  'electric': const Color.fromARGB(255, 255, 227, 105),
  'bug': const Color.fromRGBO(167, 183, 35, 1),
  'flying': const Color.fromRGBO(167, 183, 35, 1),
  'ghost': const Color.fromRGBO(112, 85, 155, 1),
  'psychic': const Color.fromRGBO(251, 85, 132, 1),
  'steel': const Color.fromRGBO(183, 185, 208, 1),
  'rock': const Color.fromRGBO(224, 192, 104, 1),
  'dragon': const Color.fromRGBO(184, 160, 248, 1),
  'fairy': const Color.fromRGBO(244, 189, 201, 1),
  'ice': const Color.fromRGBO(208, 248, 232, 1),
  'normal': const Color.fromRGBO(216, 216, 192, 1),
  'fighting': const Color.fromRGBO(204, 128, 48, 1),
  'ground': const Color.fromRGBO(248, 248, 120, 1),
  'dark': const Color.fromRGBO(168, 168, 120, 1),
  'stellar': const Color.fromARGB(255, 88, 186, 228),
};

class ColorsPokemon {
  final String nameTypes;
  final Color color;

  ColorsPokemon({required this.nameTypes, required this.color});
}

class AppTheme {
  ThemeData themeData() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        // brightness: Br
      );
}
