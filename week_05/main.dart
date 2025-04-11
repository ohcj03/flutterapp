import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final items = List.generate(100, (i) => i).toList();


  MyHomePage({super.key});


  //* 표시 때문에 잠시 주석처리함
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('타이틀'),
  //     ),
  //* 표시 때문에 잠시 주석처리함
  // body: Text('여기에 예제를 작성할 예정입니다.'),
  // body: Container(
  //   width: 100,
  //   height: 100,
  //   color: Colors.red,
  //   child: Text('디모이'),
  //   padding: EdgeInsets.all(8.0),
  //   margin: EdgeInsets.all(8.0),
  // )




  //도형들을 수직이나 수평으로 출력
  // body: Column(    //Column 수직    Row 수평
  //   children: [
  //     Container(
  //       width: 100,
  //       height: 100,
  //       color:  Colors.red,
  //       margin: EdgeInsets.all(8.0),
  //       child: Text('디모일'),
  //     ),
  //     Container(
  //       width: 100,
  //       height: 100,
  //       color:  Colors.blue,
  //       margin: EdgeInsets.all(8.0),
  //       child: Text('디모일'),
  //     ),
  //     Container(
  //       width: 100,
  //       height: 100,
  //       color:  Colors.green,
  //       margin: EdgeInsets.all(8.0),
  //       child: Text('디모일'),
  //     )
  //   ],
  // )


  //도형 안에 도형
  // body: Stack(
  //   children: [
  //     Container(
  //       width: 100,
  //       height: 100,
  //       color: Colors.red,
  //     ),
  //     Container(
  //       width: 60,
  //       height: 60,
  //       color: Colors.blue,
  //     ),
  //     Container(
  //       width: 40,
  //       height: 40,
  //       color: Colors.green,
  //     )
  //
  //   ],
  // )


  //0부터 커지는 숫자를 수직으로 출력
  // body: SingleChildScrollView(
  //   child: ListBody(
  //     children: items.map((i) => Text('$i')).toList(),
  //   ),
  // ),


  // //홈,이벤트,카메라 카테고리 만들기
  // body: ListView(
  //   scrollDirection:Axis.vertical,
  //   children: [
  //     ListTile(
  //       leading: Icon(Icons.home),
  //       title: Text('Home'),
  //       trailing: Icon(Icons.navigate_next),
  //       onTap: () {},
  //     ),
  //     ListTile(
  //       leading: Icon(Icons.event),
  //       title: Text('event'),
  //       trailing: Icon(Icons.navigate_next),
  //       onTap: () {},
  //     ),
  //     ListTile(
  //       leading: Icon(Icons.camera),
  //       title: Text('Camera'),
  //       trailing: Icon(Icons.navigate_next),
  //       onTap: () {},
  //     )
  //   ],
  // ),


  //도형별 크기 조절과 갯수 지정
  // body: GridView.count(
  //   crossAxisCount: 2,    //한 줄에 2개
  //   children: [
  //     Container(color: Colors.red, margin: EdgeInsets.all(80.0)),
  //     Container(color: Colors.blue),
  //     Container(color: Colors.green),
  //   ],
  // ),


  //빨강으로 꽉 참 모르겠음
  // body: PageView(
  //   children: [
  //     Container(color: Colors.red),
  //     Container(color: Colors.blue),
  //     Container(color: Colors.green),
  //   ],
  // ),
  //


//* 표시 때문에 잠시 주석처리함
  //   );
  // }
//}
//* 표시 때문에 잠시 주석처리함




//*
//   @override
//   Widget build(BuildContext context){
//   //상단 네비게이션 바
//   return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Tab'),
//           bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.tag_faces)),
//                 Tab(text: '메뉴2'),
//                 Tab(icon: Icon(Icons.info), text: '메뉴3'),
//               ],
//           ),
//         ),
//
//       //상단 네비게이션 바에 따른 메인 화면
//       body: TabBarView(
//         children: [
//           Container(color: Colors.yellow),
//           Container(color: Colors.orange),
//           Container(color: Colors.red),
//           ],
//         ),
//
//       //화면 아래 네비게이션 바
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {},
//         ),
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label:'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label:'Profile',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label:'Notification',
//         ),
//       ]),
//       ),
//     );
//   }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('타이틀')
      ),


      //정중앙에 빨간 정사각형
      // body: Center(
      //   child:
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      // ),


      //메인화면 꽉찬 빨간 사각형에서 40 만큼 공간 빈
      // body: Padding(
      //     padding: EdgeInsets.all(40.0),
      //     child: Container(
      //     color: Colors.red,
      //   ),
      // ),


      //오른쪽 정중앙에 위치한 빨간 정사각형
      // body: Align(
      //   alignment: Alignment.centerRight,
      //   child: Container(
      //     color: Colors.red,
      //     width: 100,
      //     height: 100,
      //   ),
      // ),
      //


      //전체 메인화면 중 3개의 단을 나눠 색상 적용
      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(color: Colors.red),
      // ),
      //     Expanded(
      //       child: Container(color: Colors.blue),
      //     ),
      //     Expanded(
      //       child: Container(color: Colors.green),
      //     ),
      //   ],
      // ),


      //빨간 사각형
      // body: SizedBox(
      //   width: 100,
      //   height: 100,
      //   child: Container(
      //     color: Colors.red,
      //   ),    //위젯이 보이거나 안보이거나 하는데 정의에 맞춰서 지정할 때? 모르겠다
      // ),


      //정중앙 흰색 텍스트 박스(카드)
      // body: Center(
      //   child: Card(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(40.0),        //모서리 굴곡
      //     ),
      //     elevation: 4.0,     //그림자
      //     child: SizedBox(
      //       width: 200,
      //       height: 200,
      //       child: Center(child: Text('내용')),     //정중앙 출력
      //     ),
      //   ),
      // ),

      //버튼 유형
      // body: Column(
      //   children: [
      //     ElevatedButton(onPressed: () {}, child: Text('RaisedButton')),
      //     TextButton(onPressed: () {}, child: Text('RaisedButton')),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 100.0),
      //     FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      //   ],
      // ),


      //텍스트 출력
      // body: Text(
      //   'Hello World',
      //   style: TextStyle(
      //     fontSize: 40.0,
      //     color: Colors.red,
      //     fontStyle: FontStyle.italic,      //눕히기
      //     fontWeight: FontWeight.bold,      //굵기
      //   ),
      // ),


      //이미지 가져오기
      //pubspec.yaml 가서 assets 설정 풀기
      //     # To add assets to your application, add an assets section, like this:
      // assets:
      // - assets/


      // body: Image.network('http://bit.ly/2Pvz4t8'),
      //   body: Image.network('assets/flutter.png'),


      //로딩창
      // body: Column(
      //   children: [
      //     CircularProgressIndicator(),    //원 로딩
      //     LinearProgressIndicator()   //선 로딩
      //   ],
      // ),


      //정중앙에 둥근 아바타 생성
      body: Center(child: CircleAvatar(
        child: Icon(Icons.person),
      )),
    );
  }
}
