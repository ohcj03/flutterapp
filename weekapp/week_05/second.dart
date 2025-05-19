import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorPage extends StatelessWidget {
  final List<String> buttons = [
    '%',
    'CE',
    'C',
    '⌫',
    '⅟x',
    'x²',
    '√x',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '−',
    '1',
    '2',
    '3',
    '+',
    '+/−',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Row(
          children: [
            SizedBox(width: 10),
            SizedBox(width: 5),
            Text('표준', style: TextStyle(color: Colors.white, fontSize: 24)),
          ],
        ),
        actions: [IconButton(icon: Icon(Icons.history), onPressed: () {})],
      ),

      body: Column(
        children: [
          // Display
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(
                '0',
                style: TextStyle(color: Colors.white, fontSize: 48),
              ),
            ),
          ),

          // Buttons Grid
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  final isOperator = buttons[index] == '=';

                  return Container(
                    decoration: BoxDecoration(
                      color: isOperator ? Colors.lightBlue : Colors.grey[850],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        buttons[index],
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
