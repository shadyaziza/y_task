import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconTextRow({Key? key, required this.icon, required this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Icon(
            icon,
            size: 16,
          ),
        ),
        Text(
          label,
          textScaleFactor: .75,
        )
      ],
    );
  }
}
