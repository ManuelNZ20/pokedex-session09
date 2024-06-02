import 'package:flutter/material.dart';

class NamePokemon extends StatelessWidget {
  const NamePokemon({super.key, required this.namePokemon});
  final String namePokemon;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_outline_rounded,
            size: 30,
            color: colors.inversePrimary,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            namePokemon.replaceRange(0, 1, namePokemon[0].toUpperCase()),
            style: TextStyle(
              fontSize: 30,
              color: colors.inversePrimary,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
