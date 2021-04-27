import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class EmailsWithBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(end: -1, top: -1),
      badgeContent: Text('5'),
      badgeColor: Theme.of(context).iconTheme.color!,
      child: IconButton(icon: Icon(Icons.email_outlined), onPressed: () {}),
    );
  }
}
