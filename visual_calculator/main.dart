import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 131, 204, 238),
          title: Center(child: const Text('Calculator')),
        ),
        body: ColoredBox(
          color: Colors.white,
          child: Column(
            spacing: 10,
            children: [
              Expanded(
                child: Center(
                  child: Text('0.00', style: TextStyle(fontSize: 35)),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('1', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('2', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('3', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('+', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.redAccent,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('4', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('5', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('6', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('-', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('7', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('8', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('9', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('X', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.redAccent,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('Button Pressed!');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            shape: CircleBorder(),
                          ),
                          child: Text('C', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('0', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('=', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('/', style: TextStyle(fontSize: 35)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
