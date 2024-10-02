import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = ['김영숙','홍길동','피자집'];
  var like = [0,0,0];

  addOne(){
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: Builder(builder: (context1){
          return FloatingActionButton(onPressed: (){
            print(context.findAncestorWidgetOfExactType<MaterialApp>());
            showDialog(context: context1, builder: (context){   //context: 커스텀 위젯을 만들때 마다 하나씩 생긴다 (부모위젯이 누구인지 정보를 담고있는 변수
              return DialogUI(state: total, add: addOne );
            });
          });


        }),
        appBar: AppBar(title:Text(total.toString()), backgroundColor: Colors.blue,),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index){
              return ListTile(
                leading: Icon(Icons.account_circle),
                title:Text(name[index]),
              );
            })
      );

  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DialogUI extends StatelessWidget { // 부모 -> 자식 state 전송하는법 1. 보내고 2. 등록하고 3. 쓴다
  const DialogUI({super.key, this.state, this.add});
  final add;
  final state;

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      child: SizedBox(
        width:300, height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(onPressed:add, child: Text(state.toString())),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소'))
          ],
        ),
      ),
    );
  }
}


