import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('앱임')
        ),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: double.infinity, height: 150,
            margin: EdgeInsets.fromLTRB(0,30,0,0 ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Text('ddddd'),

          ),
        )
      )
    );
  }
}
