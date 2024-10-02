import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
var a = SizedBox(
  child:Text('안녕'),
);  //성능상 이슈가 있을 수 있다.그래서 데이터가 변경되는 경우 사용하지 않는다
class MyApp extends StatelessWidget {
  //stless
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(),
          body: ListView(
            //메모리 절약이 가능하다
            children: [
              Text('안녕'),

            ],
          ),
        ),
    );
  }
}


//커스텀 위젯의 단점 state관리가 어려워 질 수 있다
//재사용 많은 ui들
// 큰페이지들
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override  //
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}
