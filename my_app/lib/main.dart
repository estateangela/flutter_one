import 'package:flutter/material.dart';
import 'package:my_app/pages/first_pages.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/setting_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // List name = ['a','b','c'];
  void usertap() {
    print('tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPages(),
      routes: {
        '/firstpage':(context)=> FirstPages(),
        '/homepage':(context)=> HomePage(),
        '/settingpage':(context)=> SettingPage(),

      }
        // appBar: AppBar(
        //   title: Text('What to drink',style: TextStyle(color: Colors.white)),
        //   backgroundColor: Colors.blueGrey,
        //   leading: Icon(Icons.menu,color: Colors.white,),
          
        // ),---------------
        // C o l u m n ----
        // body: Column(
        //   children: [
        //     Expanded(
        //       child: Container(
        //       color: const Color.fromARGB(255, 47, 3, 3),
        //     )),
        //     Expanded(
        //       child: Container(
        //       color: const Color.fromARGB(237, 129, 11, 11),
        //     )),
        //     Expanded(child: Container(
        //       color: const Color.fromARGB(210, 242, 2, 2),
        //     ))
            
        //   ],
        // )----------
        // L i s t V i e w 水平/垂直捲軸
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       width: 200,
        //       color: Colors.amberAccent,
        //     ),
        //     Container(
        //       width: 200,
        //       color: const Color.fromARGB(255, 95, 76, 8),
        //     ),
        //     Container(
        //       width: 200,
        //       color: const Color.fromARGB(255, 64, 147, 255),
        //     ),
        //   ],
        // )------------
        // L i s t V i e w . b u i l d e r
        // body: ListView.builder(
          
        //   itemCount: name.length,
        //   itemBuilder:(context, index) => ListTile(
        //     title: Text(name[index]),
        //   )
          
        //   ), -------------
        // g r i d
        //   body: GridView.builder(
        //     gridDelegate: 
        //     SliverGridDelegateWithFixedCrossAxisCount
        //     (crossAxisCount: 4), 
        //     itemBuilder: (context,index) => Container(
        //       color: Colors.purple,
        //       margin: EdgeInsets.all(2), 
        //     )),
        // ), --------------------
        // S t a c k 
        // body: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amber[100],
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber[200],
        //     ),
        //   ],
        // ), ----------------
        //gestureDetector 偵測點擊ㄉ東東
        // body: Center(
        //   child:GestureDetector(
        //     onTap: usertap,
          
        //   child:Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.amberAccent[200],
        //     child: Center(child: Text('Tap tap!'))
            
        //   )
        //   )
        // ),
        
        
    );
    
  }
}
