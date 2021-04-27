import 'package:flutter/material.dart';

import 'widgets/widget.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: SizedBox(height: 250, child: HeroCarousel()),
          ),
          SizedBox(
            width: 16,
          ),
          Flexible(flex: 2, child: FixedHeroContainer()),
        ],
      ),
    );
  }
}

class HeroSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 8,
      children: [
        SizedBox(height: 250, child: HeroCarousel()),
        SizedBox(
          width: 16,
        ),
        FixedHeroContainer()
      ],
    );
  }
}
