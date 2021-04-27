import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class LikesWithBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(end: -1, top: -1),
      badgeContent: Text('5'),
      badgeColor: Theme.of(context).iconTheme.color!,
      child: IconButton(
          icon: Icon(Icons.favorite_outline_outlined), onPressed: () {}),
    );
  }
}
