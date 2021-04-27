import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  final IconData direction;
  final Alignment alignment;
  final VoidCallback onPressed;
  const ArrowIcon(
      {Key? key,
      required this.direction,
      required this.alignment,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).iconTheme.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
            icon: Icon(
              direction,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            onPressed: onPressed),
      ),
    );
  }
}
