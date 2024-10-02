import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {  //stless
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //위젯 테마를 사용할 수 있다 Cupertino
      home: Scaffold(
        appBar: AppBar(title: Text('앱임'),
          leading:Icon(Icons.star),
          actions: [Icon(Icons.star), Icon(Icons.star)],
        ),
        body:Column(

          children: [
            Text('안녕'),
            Container(
                margin: EdgeInsets.all(20),
                // padding: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.black)
                ),
                width: 50, height: 50,),//color:Colors.blue),//LP 단위 50lp = 1.2cm
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//가운데 정렬 spaceEvenly flex비슷
              crossAxisAlignment: CrossAxisAlignment.center, //세로축 정렬
              children: [Icon(Icons.start), Icon(Icons.shop)],
            ),
            Icon(Icons.star, color: Colors.blue),
            Image.asset('NodeImg.png'), //image 등록 해야함 pubspec.yaml 파일에 등록해야함 flutter: assets: - assets
            SizedBox(
              child: Text("안녕하세요",
                style: TextStyle(color: Color.fromRGBO(10, 10, 10, 10.2), fontWeight:FontWeight.w700, fontSize: 40, letterSpacing: 10, backgroundColor: Colors.blue),
                // Color(0xffaaaaa)),
                // Colors.red),
              ),
            ),
            Center(child:Container(height: 50,)),
            Align(
              alignment: Alignment.bottomCenter,

              child: Container(width: double.infinity,height: 50, color:Colors.red,),
            ),
            // Scaffold(
            //   appBar: AppBar(),
            //   body: Container(),
            //   bottomSheet: BottomAppBar(),
            // )
            Row(
              children: [
                Flexible(child: Container(color: Colors.blue,height: 30,), flex: 3, ),
                Flexible(child: Container(color: Colors.red,height: 30,), flex: 7, ),
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(color: Colors.green, height: 20,),),
                Container(width:100, color: Colors.blue, height: 20,)
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container( //SizeBox 가능 가벼움
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
                TextButton(onPressed: (){}, child: Text("hello")),
                ElevatedButton(onPressed: (){}, child: Text("hello"),style: ButtonStyle(),),
                IconButton(onPressed: (){}, icon: Icon(Icons.star))
              ],
            ),
          )
        ),
      )
    );
  }
}
