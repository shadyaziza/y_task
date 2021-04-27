import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';
import 'widgets.dart';

class AdInformationColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Category Here',
            textScaleFactor: .85,
            style: TextStyle(color: kButtonColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Classified Ad Title Here',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '00,000 EGP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          IconTextRow(icon: Icons.location_on_sharp, label: 'Location Here'),
          SizedBox(
            height: 4,
          ),
          IconTextRow(icon: Icons.query_builder_sharp, label: '2 Hours ago'),
          IconTextRow(icon: Icons.query_builder_sharp, label: '2 Hours ago'),
        ],
      ),
    );
  }
}
