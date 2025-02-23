import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        // leading: Icon(Icons.menu,color: Colors.white,),
      ),
    );
  }
}
