import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';

class FirstPages extends StatelessWidget {
  const FirstPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('firstpage : What to drink',style: TextStyle(color: Colors.white)),
         backgroundColor: Colors.blueGrey,
        //  leading: Icon(Icons.menu,color: Colors.white,),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],
        child: Column(
          children: [
            DrawerHeader(
              child: 
              Icon(
                Icons.favorite_rounded,
                size: 49,               
                )
              ),
                    
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H o m e'),
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S e t t i n g'),
                onTap: () {
                  Navigator.pushNamed(context, '/settingpage');
                },
              ),
          ]
        ),
        
      ),

      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('go to secondpage'),
      //     onPressed: () {
      //       //basic navigate
      //       // Navigator.push(context,
      //       // MaterialPageRoute(
      //       //   builder: (context) => SecondPages())
      //       // );
      //       //-----
      //       // Navigator.pushNamed(context, '/secondpage');
      //     }
          
      //     ),
        
      // ),
    );
  }
}