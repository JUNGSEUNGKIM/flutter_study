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
          actions:[
            Icon(Icons.star),Icon(Icons.shop),Icon(Icons.radio)
          ],
        ),
        body: Center(
          child: DropdownExample(),
        )
      )
    );
  }
}

class DropdownExample extends StatefulWidget{
  const DropdownExample({super.key});

  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample>{
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text("checked"),  // 선택되지 않았을 때 보이는 텍스트
      value: _selectedValue,  // 현재 선택된 값
      items: const [
        DropdownMenuItem(
          child: Text('1'),
          value: "hello",
        ),
      ],
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;  // 선택된 값을 상태에 저장
        });
      },
    );
  }
}
