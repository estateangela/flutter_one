import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: HomePage(),
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void btnEvent() {
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'bbbbccc\n1\n2',
            maxLines: 2,
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // 添加一些間距
          Center(child: TextField(
            controller: myController,
            decoration: InputDecoration(hintText: '請輸入...')
          )),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: btnEvent,
            style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue, // 設定背景顏色
             foregroundColor: Colors.white
             ),
            child: Text('印出輸入框內容'),            
          ),
          
        ],
      ),
    );
  }
}