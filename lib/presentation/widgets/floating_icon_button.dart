import 'package:flutter/material.dart';

class FloatingIconButton extends StatelessWidget {
  const FloatingIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: label,
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            size: 34,
          ),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
