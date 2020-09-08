import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String variableTexts;

  Texts(this.variableTexts);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        variableTexts,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
