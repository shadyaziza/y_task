import 'package:flutter/material.dart';
import '../../../../core/constants/styles.dart';

class FeaturedTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'FEATURED',
          style: TextStyle(color: kButtonColor),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'PREMIUM ADS',
          textScaleFactor: 1.4,
        )
      ],
    );
  }
}
