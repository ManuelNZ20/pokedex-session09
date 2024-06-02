import 'package:flutter/material.dart';
import 'package:session09_app_pokedex/config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool themeLight = true;
  Color color = colorsBackgroundPokemon['grass'];
  ThemeData themeData() => ThemeData(
        useMaterial3: true,
        brightness: themeLight ? Brightness.light : Brightness.dark,
        colorSchemeSeed: color,
      );

  void changeTheme() {
    themeLight = !themeLight;
    notifyListeners();
  }

  void changeColorSchemeSeed(String typePokemonProvider) {
    color = colorsBackgroundPokemon[typePokemonProvider];
    notifyListeners();
  }
}
