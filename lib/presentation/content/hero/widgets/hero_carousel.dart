import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../../../../core/constants/styles.dart';
import 'widget.dart';

class HeroCarousel extends StatefulWidget {
  @override
  _HeroCarouselState createState() => _HeroCarouselState();
}

class _HeroCarouselState extends State<HeroCarousel> {
  int _index = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageIndicatorContainer(
      align: IndicatorAlign.bottom,
      length: 3,
      indicatorSpace: 8,
      indicatorColor: kBackgroundColorDark.withOpacity(.3),
      indicatorSelectorColor: kBackgroundColorDark,
      child: PageView(
        controller: _pageController,
        onPageChanged: (int newValue) => (setState(() => _index = newValue)),
        children: [
          CarouselItemContainer(index: _index),
          CarouselItemContainer(index: _index),
          CarouselItemContainer(index: _index),
        ],
      ),
    );
  }
}
