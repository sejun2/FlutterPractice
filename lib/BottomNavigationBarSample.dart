import 'package:flutter/material.dart';


void main(){
  runApp(MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget{
  var _currentIndex = 0;

  @override
  State<StatefulWidget> createState() {
    return MyHomeState2();
  }
}

class MyHomeState2 extends State{
  var _currentIndex = 0;
  var widgetList = <Widget>[
    Text("TAB1", style: TextStyle(fontSize: 30),),
    Text("TAB2", style: TextStyle(fontSize: 30),),
    Text("TAB3", style: TextStyle(fontSize: 30),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottmNavBar Sample'),
      ),
      body: Center(
        child: widgetList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home2'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'hom3'),
        ],
        selectedItemColor: Colors.amber,
        currentIndex: _currentIndex,
        onTap : _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

}

