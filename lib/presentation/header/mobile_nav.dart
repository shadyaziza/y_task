import 'package:flutter/material.dart';
import '../../core/constants/styles.dart';
import 'header_nav_items.dart';

class MobileNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: kPrimaryColor),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          child: ListView(
            children: [
              Image.asset(
                'imgs/logo_footer.png',
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'imgs/logo_header.png',
                      height: 20,
                    ),
                    ...headerNavItem
                        .map((e) => ListTile(
                              title: e,
                            ))
                        .toList(),
                    Center(
                      child: LanguageDropDown(
                        rowChild: false,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
