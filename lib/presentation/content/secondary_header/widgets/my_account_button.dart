import 'package:flutter/material.dart';

class MyAccountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        iconDisabledColor: Theme.of(context).primaryColor,
        hint: TextButton.icon(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
          ),
          onPressed: null,
          icon: Icon(Icons.person_outline_outlined),
          label: Text(
            'My Account',
          ),
        ),
        items: [
          DropdownMenuItem(
            child: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
