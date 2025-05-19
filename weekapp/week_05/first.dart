import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 350,
            height: 300,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      // 빨간색 박스
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.red, child: Container()),
                      ),
                      // 파란 + 검정 + 주황 박스 그룹
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            // 파란색 박스
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                                child: Container(),
                              ),
                            ),
                            // 검정 + 주황 박스
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  // 검정색 박스
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.black,
                                      child: Container(),
                                    ),
                                  ),
                                  // 주황색 박스
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.orange,
                                      child: Container(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 노란색 박스
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.yellow, child: Container()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
