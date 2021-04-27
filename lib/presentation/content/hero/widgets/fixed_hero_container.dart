import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';

class FixedHeroContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          child: Text(
            'Praesent gravida felis ac sem aliquet viverra a quis purus.',
            strutStyle: StrutStyle(height: 2),
            style: TextStyle(
                fontWeight: FontWeight.bold, color: kBackgroundColorDark),
          ),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [kGradientColorLight, kGradientColorDark],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset('imgs/mac.png'),
          height: 175,
        )
      ],
    );
  }
}
