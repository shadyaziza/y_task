import 'package:flutter/material.dart';

import '../../../responsive/responsive_widget.dart';
import '../../widgets/widgets.dart';
import 'widgets.dart';

class PremiumAdsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HorizontalList(widgets: [
      ...List.generate(
        10,
        (index) => PremiumAdContainer(),
      )
    ], height: getScreenSize(context).height * .40);
  }
}
