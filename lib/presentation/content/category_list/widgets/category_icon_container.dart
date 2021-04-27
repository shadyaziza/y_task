import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

class CategoryIconContainer extends StatelessWidget {
  CategoryIconContainer(
      {required this.name, required this.count, required this.photoUrl});
  final String name;
  final int count;
  final String photoUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColorDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(child: Image.asset('imgs/${photoUrl.trim()}')),
          Flexible(
            child: Text(
              name.trim(),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).tagContainerColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  '$count items',
                  textScaleFactor: 0.75,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
