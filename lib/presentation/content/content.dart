import 'package:flutter/material.dart';

import '../responsive/max_width_widget.dart';
import '../responsive/responsive_widget.dart';
import 'ad_section/ad_section.dart';
import 'category_list/category_list.dart';
import 'hero/hero.dart';
import 'secondary_header/secondary_header.dart';
import 'secondary_header/widgets/widgets.dart';
import 'widgets/widgets.dart';

//**Content appears under header */
class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileWidget: MobileContent(),
      tabletWidget: TabletContent(),
      desktopWidget: MaxWidthContainer(child: WebContent()),
    );
  }
}

class MobileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        children: [
          SearchWidgetMobile(),
          SizedBox(height: 16),
          HeroSectionMobile(),
          SizedBox(height: 16),
          CategoryList(),
          SizedBox(height: 16),
          AdSection()
        ]);
  }
}

class TabletContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      children: [
        SearchWidgetMobile(),
        SizedBox(height: 24),
        HeroSection(),
        SizedBox(height: 24),
        CategoryList(),
        SizedBox(height: 24),
        AdSection()
      ],
    );
  }
}

class WebContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 32),
      children: [
        SecondaryHeader(),
        SizedBox(
          height: 24,
        ),
        HeroSection(),
        SizedBox(
          height: 32,
        ),
        Center(
          child: Text(
            'START EXPLORING YOJAD',
            textScaleFactor: 1.4,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        CategoryList(),
        SizedBox(
          height: 80,
        ),
        ViewAllButton(),
        SizedBox(
          height: 48,
        ),
        AdSection(),
        SizedBox(
          height: 104,
        )
      ],
    );
  }
}
