import 'package:flutter/material.dart';


class  Texts extends StatelessWidget {
  final String variableTexts;

  Texts(this.variableTexts);

  @override
  Widget build(BuildContext context) {
    return Text(variableTexts);
  }
}