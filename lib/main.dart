// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './texts.dart';
import './textControl.dart';

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
      'The world\'s quietest room is located at Microsoft\'s headquarters in Washington state.',
      'There are only three countries in the world that don\'t use the metric system.',
      '\"Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu\", New Zealand is the longest place name in the world.',
      'Africa and Asia are home to nearly 90 percent of the world\'s rural population.',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fun Facts Shuffler',
          ),
        ),
        body: _textIndex < texts.length
            ? Column(
                children: [
                  Texts(
                    texts[_textIndex],
                  ),
                  TextControl(_changeText),
                ],
              )
            : Center(
                child: Text(
                  'We are done here!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
      ),
    );
  }
}
