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
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Flexible(child: Container(color: Colors.blue), flex: 3),
                  Flexible(child: Container(color: Colors.red), flex: 7),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.green)),
                  Container(height: 100, width: double.infinity, color: Colors.yellow)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
