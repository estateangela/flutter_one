import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Container(

          height: 300,
          width: 300,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),

          ),
          
          child: Icon(
            Icons.star,
            color: Colors.amber,
            size: 64,
          )

        )
        )
        
        

        ),
      );



    
  }
}
