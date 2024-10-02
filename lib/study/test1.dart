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
              actions: [
                Icon(Icons.star), Icon(Icons.shop), Icon(Icons.radio)
              ],
            ),
            body: Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset('NodeImg.png', width:150),
                Container(
                  width: 300,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('카메라 팝니다.', style: TextStyle(),),
                      Text('금호동 3가'),
                      Text('7000원'),
                      Text('아이콘이랑 글자'),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text('4')
                        ],
                      )

                    ],
                  ),
                ),],
              ),
            )
        )
    );
  }
}