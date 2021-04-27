import 'package:flutter/material.dart';
import 'header_nav_items.dart';
import '../responsive/responsive_widget.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileWidget: MobileHeader(),
      desktopWidget: WebHeader(),
    );
  }
}

class MobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            onPressed: () {})
      ],
      title: Text('Home'),
      centerTitle: true,
    );
  }
}

class WebHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 8.0),
        child: Image.asset(
          'imgs/logo_footer.png',
          height: 24.0,
        ),
      ),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ...headerNavItem,
        LanguageDropDown(
          rowChild: true,
        )
      ]),
    );
  }
}
