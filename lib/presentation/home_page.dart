import 'package:flutter/material.dart';
import '../core/constants/breakpoints.dart';
import 'content/secondary_header/widgets/email_badge.dart';
import 'content/secondary_header/widgets/likes_badge.dart';
import 'content/secondary_header/widgets/place_ad_button.dart';
import 'header/header.dart';
import 'header/mobile_nav.dart';

import 'responsive/responsive_widget.dart';

import 'content/content.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = getScreenSize(context).width;
    final height = getScreenSize(context).height;
    final bool isDesktop = width >= kDesktopBreakPoint;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isDesktop ? null : PlaceAdButton(),
      bottomNavigationBar: isDesktop
          ? null
          : BottomNavigationBar(items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: LikesWithBadge(), label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: EmailsWithBadge(), label: 'Messages'),
            ]),
      drawer: isDesktop ? null : MobileNav(),
      appBar: PreferredSize(
        child: Header(),
        preferredSize: Size(width,
            width >= kDesktopBreakPoint ? height * 0.045 : height * 0.085),
      ),
      body: Content(),
    );
  }
}
