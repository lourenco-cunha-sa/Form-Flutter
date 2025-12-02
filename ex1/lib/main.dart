import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _num1 = 0;
  int _num2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: Text('Adding simulator')),
        body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter the first number",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(15),
                ],
                onChanged: (value) {
                  setState(() {
                    if (value.isNotEmpty) {
                      _num1 = int.parse(value);
                    } else {
                      _num1 = 0;
                    }
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter the second number",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(15),
                ],
                onChanged: (value) {
                  setState(() {
                    if (value.isNotEmpty) {
                      _num2 = int.parse(value);
                    } else {
                      _num2 = 0;
                    }
                  });
                },
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  (_num1 + _num2).toString(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'XXX'),
          ],
        ),
      ),
    );
  }
}
