import 'package:flutter/material.dart';

import '../../../core/theme.dart';
import 'widgets/widgets.dart';

class AdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32, top: 16),
      decoration: BoxDecoration(color: Theme.of(context).backgroundColorDark),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FeaturedTexts(),
          SizedBox(
            height: 48,
          ),
          PremiumAdsList(),
        ],
      ),
    );
  }
}
