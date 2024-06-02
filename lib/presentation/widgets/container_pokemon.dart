import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session09_app_pokedex/config/theme/app_theme.dart';
import 'package:session09_app_pokedex/domain/entities/pokemon.dart';
import 'package:session09_app_pokedex/presentation/widgets/list_sprites_pokemon.dart';
import 'package:session09_app_pokedex/presentation/widgets/name_pokemon.dart';

class ContainerPokemon extends StatelessWidget {
  const ContainerPokemon({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * .5,
          decoration: BoxDecoration(
              color: colorsBackgroundPokemon[pokemon.types[0].type.name]),
        ),
        SvgPicture.asset(
          'assets/pokemon/pokeball.svg',
          width: size.width * .4,
          height: size.height * .4,
        ),

        // Image.network(pokemon.sprites.other!.dreamWorld.frontDefault),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              pokemon.sprites.other!.officialArtwork.frontDefault,
              width: size.width * .8,
            ),
            NamePokemon(namePokemon: pokemon.name),
          ],
        ),
      ],
    );
  }
}
