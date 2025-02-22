import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Setting',style: TextStyle(color: Colors.white)),
         backgroundColor: Colors.blueGrey,
        //  leading: Icon(Icons.menu,color: Colors.white,),
      ),
    );
  }
}