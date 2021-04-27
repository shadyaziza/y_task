import 'package:flutter/material.dart';

import '../../core/theme.dart';

class LanguageDropDown extends StatelessWidget {
  final rowChild;

  const LanguageDropDown({Key? key, required this.rowChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: rowChild
          ? const EdgeInsets.only(right: 48.0, left: 128.0)
          : const EdgeInsets.all(0),
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
        hint: Text(
          'Languages',
          style: TextStyle(color: Theme.of(context).backgroundColorDark),
        ),
        items: [
          DropdownMenuItem(
            child: Text('Arabic'),
          ),
          DropdownMenuItem(
            child: Text('Spanish'),
          ),
        ],
      )),
    );
  }
}

//should be injected from app state
final List<Widget> headerNavItem = [
  TextButton(
    onPressed: () {},
    child: Text('Properties'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Mobile & Electronics'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Cars'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Furniture & Home Appliances'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Kids'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Jobs'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Sports Equipment'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Services'),
  ),
  TextButton(
    onPressed: () {},
    child: Text('Others'),
  ),
];
