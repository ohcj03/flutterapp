import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lifecycle Demo',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage - build');
    return Scaffold(
      appBar: AppBar(title: Text('첫 번째 페이지')),
      body: Center(
        child: ElevatedButton(
          child: Text('다음 페이지로 이동'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
    print('SecondPage - initState');
  }

  @override
  void dispose() {
    print('SecondPage - dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('SecondPage - build');
    return Scaffold(
      appBar: AppBar(title: Text('두 번째 페이지')),
      body: Center(
        child: ElevatedButton(
          child: Text('뒤로 가기'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
