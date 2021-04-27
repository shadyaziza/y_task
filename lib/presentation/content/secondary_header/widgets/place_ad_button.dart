import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';

class PlaceAdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all(kButtonColor),
            ),
        onPressed: () {},
        icon: Icon(Icons.add_rounded),
        label: Text('Place Ad'),
      ),
    );
  }
}
