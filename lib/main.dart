// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './texts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;
  void _changeText() {
    setState(() {
      _textIndex += 1;
    });
    print(_textIndex);
  }

  @override
  Widget build(BuildContext context) {
    var texts = [
      'This is first text',
      'This is second text',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Assignment App',
          ),
        ),
        body: Column(
          children: [
            Texts(
              texts[_textIndex],
            ),
            RaisedButton(
              child: Text('Press Here'),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }
}
