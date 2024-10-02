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
        appBar: AppBar(leading: Icon(Icons.star), title: Text('ddd'),
        actions:[Icon(Icons.star), Icon(Icons.shop)]),
        body: SizedBox(
          child: Text('안녕하세요dd',
            style: TextStyle(fontWeight: FontWeight.w700,),
          )
        ),
        bottomNavigationBar: BottomAppBar(
          child:ElevatedButton(
              onPressed: (){}, child: Text('글자'),

          ),
        ),
      )
    );
  }
}
