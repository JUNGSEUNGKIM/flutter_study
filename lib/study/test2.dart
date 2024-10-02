import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

// class  extends StatefulWidget {
//   const ({super.key});
//
//   @override
//   State<> createState() => _State();
// }
//
// class _State extends State<> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


class MyApp extends StatefulWidget{
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동','피자집'];
  var like = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            a++;
            print(a);
            setState(() {
              a++;
              print(a);
            });
          },
          child: Text('button${a.toString()}'),),
        appBar: AppBar(backgroundColor: Colors.blue,
        title: Text(name[0])),
        body:
        // ListView(
          // children: [
          //   ListTile(
          //     leading: Icon(Icons.account_circle),
          //     title: Text('홍길동')
          //   )
          // ],
        // )
        ListView.builder(
          itemCount: 300,
          itemBuilder: (context, index){
            print(index);
            return ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Row(
                      children: [
                        Text('${name[index%3]} ${index}'),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(Icons.favorite, size:50, color:Colors.pinkAccent),
                            Text('${like[index%3]}', style: TextStyle(
                              fontSize:20, fontWeight: FontWeight.bold, color: Colors.white
                            ),)
                          ],
                        )
                      ]),
                    trailing: TextButton(onPressed: (){
                      setState(() {
                        like[index%3]++;
                      });

                    }, child: Text('LIKE')),
                  );
          },
        ),
      )
    );
    throw UnimplementedError();
  }
}