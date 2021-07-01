import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State {
  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Hello World'),
              bottom: TabBar(
                  tabs: [
                    Tab(text: 'TAB1'),
                    Tab(text: 'TAB2'),
                    Tab(text: 'TAB1'),
                  ]
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.black26,
                )
              ],
            )
        )
    );
  }

}
