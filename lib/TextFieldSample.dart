import 'package:flutter/material.dart';

void main(){
  runApp(TextFieldApp());
}

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _TextFieldHome(),
    );
  }
}

class _TextFieldHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TextFieldHomeState();
  }
}
class _TextFieldHomeState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Title'),
      ),
      body: Column(
        children: [
          TextField(),
          TextField(
            decoration: InputDecoration(labelText: '여기에 입력하세요'), //hint
          ),
          TextField(
            decoration: InputDecoration(labelText: '여기에 입력하세요',
            border: OutlineInputBorder()//외관선
            ),
          ),
        ],
      ),
    );
  }

}