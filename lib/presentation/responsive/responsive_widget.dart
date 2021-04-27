import 'package:flutter/material.dart';

import '../../core/constants/breakpoints.dart';

Size getScreenSize(ctx) => MediaQuery.of(ctx).size;

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.mobileWidget,
    this.tabletWidget,
    required this.desktopWidget,
  }) : super(key: key);

  final Widget mobileWidget;
  final Widget? tabletWidget;
  final Widget desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= kMobileBreakPoint) {
          return mobileWidget;
        } else if (constraints.maxWidth > kMobileBreakPoint &&
            constraints.maxWidth < kDesktopBreakPoint) {
          return tabletWidget ?? mobileWidget;
        } else {
          return desktopWidget;
        }
      },
    );
  }
}
