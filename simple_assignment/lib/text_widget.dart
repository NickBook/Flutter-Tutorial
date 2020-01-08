import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;

  TextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text);
  }
}