import 'package:flutter/material.dart';
import 'search_bar_page.dart';

class musicPage extends StatefulWidget {
  const musicPage({Key? key}) : super(key: key);

  @override
  State<musicPage> createState() => _musicPageState();
}

class _musicPageState extends State<musicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EEDB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('qwe'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            ),
            child: Text('temp'),
          ),
        ],
      ),
    );
  }
}
