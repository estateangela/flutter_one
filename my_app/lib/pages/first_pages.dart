import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/setting_page.dart';

class FirstPages extends StatefulWidget {
  FirstPages({super.key});

  @override
  State<FirstPages> createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage
    HomePage(),

    //profile page
    ProfilePage(),

    //setting page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firstpage', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        //  leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.favorite_rounded,
            size: 49,
          )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('H o m e'),
            iconColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S e t t i n g'),
            iconColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, '/settingpage');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('S p i n n e r'),
            iconColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, '/drinkWheelApp');
            },
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),

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
