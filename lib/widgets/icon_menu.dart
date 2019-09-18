import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final IconData icon;

  IconMenu(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Color(0xFFAFAFAF),
      ),
    );
  }
}
