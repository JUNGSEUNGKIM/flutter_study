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
        appBar:AppBar(
          title: Text("앱임"
          ),
          backgroundColor: Colors.blue,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          //display flex 같은 느낌
          children: [Icon(Icons.star),Icon(Icons.shop)]
        ),
        bottomNavigationBar: BottomAppBar(
            child: SizedBox( //Container 는 좀 무거움
              height: 200,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)]
              ),
            ),
        )
      )
    );
  }
}


