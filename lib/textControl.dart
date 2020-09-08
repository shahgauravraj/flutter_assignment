import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function selectHandler;

  TextControl(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text('Press Here'),
        onPressed: selectHandler,
      ),
    );
  }
}
