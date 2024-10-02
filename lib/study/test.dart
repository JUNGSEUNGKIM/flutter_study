void main(){
  String? name; //null값 허용 null-safety와 관련된 중요한 차이
  String name1 = '그는 말했다 "당장 저거 치워"';
  // name1 = name;  //null 값 허용하지 않음
  print(name1);
  print(name ?? 'Test');  //null 이면 test출력
  print(name?.length);  // null이면 호출 생략
  print(name ??= 'Test1'); //null이면 값을 할당
  print(name);

  int age = 20;
  if(age >= 10){
    print('Adult');
  }else{
    print('Minor');
  }

  String message = age >= 18 ? 'Adult' : 'Minor';
  int day = 1;
  switch(day){
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    default:
      print('OtherDay');
  }

  for(int i = 0; i<5 ; i++){
    print(i);
  }

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  for(String fruit in fruits){
    print(fruit);
  }

  int i = 0;
  while(i<5){
    print(i);
    i++;
  }

  void greet(){
    print('Hello, World!');
  }
  greet();

  int add(int a, int b){
    return a+b;
  }

  print(add(3,4));

  void greet1({String name = 'Guest'}){
    print('Hello, $name');
  }
  greet1();
  greet1(name: 'Peter');

  var person = Person('Peter', 30);
  person.introduce();

  var list = [1,2,3];
  List<dynamic> list2= ['1',2,3,4];
  var list3 = ['dd','ddd',1,3,0.1,true];
  List<int> list4 = [1,2,3,4];

  fetchData();
  print('Waiting for data...');
}

Future<void> fetchData() async{
  await Future.delayed(Duration(seconds:2));
  print('Data fetched');
}

class Person{
  String name;
  int age;
  Person(this.name, this.age);

  void introduce(){
    print('My name is $name and I am $age years old.');
  }
}
