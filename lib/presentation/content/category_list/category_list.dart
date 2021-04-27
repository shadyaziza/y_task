import 'package:flutter/material.dart';

import '../../responsive/responsive_widget.dart';
import '../widgets/widgets.dart';
import 'widgets/widgets.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryIconContainer> _iconList = [
    CategoryIconContainer(
        name: 'Electronics', count: 200, photoUrl: 'Electronics.png'),
    CategoryIconContainer(
        name: 'Mobiles&Tablets', count: 200, photoUrl: 'Mobiles&Tablets.png'),
    CategoryIconContainer(name: 'Cars', count: 200, photoUrl: 'Cars.png'),
    CategoryIconContainer(
        name: 'Home Appliances', count: 200, photoUrl: 'Home_Appliances.png'),
    CategoryIconContainer(name: 'Jobs', count: 200, photoUrl: 'Jobs.png'),
    CategoryIconContainer(
        name: 'Properties for sale',
        count: 200,
        photoUrl: 'Properties_for_sale.png'),
    CategoryIconContainer(name: 'Kids', count: 200, photoUrl: 'Kids.png'),
    CategoryIconContainer(
        name: 'Sports Equipments',
        count: 200,
        photoUrl: 'Sports_Equipment.png'),
    CategoryIconContainer(
        name: 'Community', count: 200, photoUrl: 'Community.png'),
    CategoryIconContainer(
        name: 'Services', count: 200, photoUrl: 'Services.png'),
    CategoryIconContainer(name: 'Others', count: 200, photoUrl: 'Others.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return HorizontalList(
      height: getScreenSize(context).height * 0.2,
      widgets: [..._iconList],
    );
  }
}
