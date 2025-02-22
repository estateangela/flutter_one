import 'package:flutter/material.dart';

class SecondPages extends StatelessWidget {
  const SecondPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('secondpage',style: TextStyle(color: Colors.white)),
         backgroundColor: Colors.blueGrey,
         leading: Icon(Icons.menu,color: Colors.white,),
      ),
    );
  }
}