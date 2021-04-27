import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../responsive/responsive_widget.dart';

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
