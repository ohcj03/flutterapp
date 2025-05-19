import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// App 클래스; 우리 앱의 root Widget
// root Widget 은 두 개의 옵션 중 하나를 return 해야함
// 1. MaterialApp 이라는 Widget을 return
// 2. CupertinoApp 이라는 Widget을 return
//// material 과 cupertino 는 각각 구글과 애플의 디자인 시스템이다.
// 어떤 family 스타일을 사용할 지 flutter 에게 알려주는 것
// 추후 커스터마이징 해서 우리만의 스타일을 만들 것이지만
// root Widget 에서는 단순히 테마(family style) 을 위해 하나의 Widget을 선택 해야한다.
//// Flutter 는 구글에서 만든 것이기 때문에 일반적으로 MaterialApp 이 더 낫다.
// MaterialApp, Scaffold, AppBar, Text, Benter, TextStyle 은 전부 클래스(위젯)이고
// 아래서 코드를 작성할때 생성자를 Named Constructor Parameters 방식으로 사용한것이다
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello World!',
          ),
        ),
      ),
    );
  }
}