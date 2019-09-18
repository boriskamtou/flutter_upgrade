import 'package:flutter/material.dart';

class ImageMenuButton extends StatelessWidget {
  final String imagePath;
  ImageMenuButton(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(imagePath),
    );
  }
}
