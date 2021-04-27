import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SecondaryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'imgs/logo_header.png',
          height: 32,
        ),
        SearchWidgetWeb(),
        EmailsWithBadge(),
        LikesWithBadge(),
        MyAccountButton(),
        PlaceAdButton(),
      ],
    );
  }
}
