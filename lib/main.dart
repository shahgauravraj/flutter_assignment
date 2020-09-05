import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Assignment App',
          ),
        ),
        body: Column(
          children: [
            Text(
              'This is the statement to be displayed at the top.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26),
            ),
            RaisedButton(
              onPressed: () => print('Button pressed once.'),
              child: Text('Press Here'),
            )
          ],
        ),
      ),
    );
  }
}
