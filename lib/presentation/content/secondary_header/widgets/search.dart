import 'package:flutter/material.dart';

import '../../../../core/constants/breakpoints.dart';
import '../../../../core/constants/styles.dart';

class SearchWidgetWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 32,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Color(0xffe5ccc7), width: 1.2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      // height: 32,
      width: kDesktopBreakPoint / 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: SearchTextField(),
          ),
          Separator(),
          Flexible(child: LocationSearch()),
          SearchIcon()
        ],
      ),
    );
  }
}

class SearchWidgetMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 32,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Color(0xffe5ccc7), width: 1.2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      // height: 32,
      width: kDesktopBreakPoint / 2,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          SearchTextField(),
          Separator(),
          LocationSearch(),
          SearchIcon()
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'What are you looking for?',
          contentPadding: EdgeInsets.only(left: 8)),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(width: 1.2, color: Color(0xffe5ccc7)),
        ),
      ),
    );
  }
}

class LocationSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField(
        decoration: InputDecoration(border: InputBorder.none),
        hint: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            IconButton(
                //To remove default padding
                padding: EdgeInsets.all(0),
                icon: Icon(Icons.location_on_sharp),
                onPressed: null),
            Text('Select a Location')
          ],
        ),
        items: [
          DropdownMenuItem(
            child: Text('Google place item1'),
          ),
        ],
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(4.0),
      child: ElevatedButton.icon(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
        onPressed: () {},
        label: Text('Search'),
        icon: Icon(Icons.search_sharp),
      ),
    );
  }
}
