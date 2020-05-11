import 'package:flutter/material.dart';
import 'package:flutter_playground/values/assets.dart';

class ImageExample extends StatelessWidget {
  final String title;

  const ImageExample(this.title);

  @override
  Widget build(BuildContext context) {
    return new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: new Image.asset(
        Assets.featureGraphic,
        fit: BoxFit.fill,
      ),
    );
  }
}