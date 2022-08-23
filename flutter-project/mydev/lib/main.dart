import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Flutter'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
            height: 100,
          ),
          Align(
            child: Icon(Icons.backpack),
            alignment: Alignment.topLeft,
          ),
          Align(
            child: Icon(Icons.verified),
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Icon(Icons.verified),
            alignment: Alignment.topRight,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.verified), label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
      ]),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: Container(
          color: Colors.red,
          height: 50,
          width: 50,
        ),
      ),
    ));
  }
}
