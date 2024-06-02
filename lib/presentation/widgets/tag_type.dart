import 'package:flutter/material.dart';

class TagsTypes extends StatelessWidget {
  const TagsTypes({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(50)),
      child: Text(name),
    );
  }
}
