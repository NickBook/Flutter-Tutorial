import 'package:flutter/material.dart';
import './text_widget.dart';

class TextManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextManager();
  }
}

class _TextManager extends State<TextManager> {
  String buttonText;

  @override
  void initState() {
    this.buttonText = 'Initial Button Text';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Press Me!'),
          onPressed: () {
            setState(() {
              buttonText = 'Pressed Button Text';
            });
          },
        ),
        TextWidget(buttonText),
      ],
    );
  }
}
