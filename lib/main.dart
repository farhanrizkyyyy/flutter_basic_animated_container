// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          color: isOn ? Colors.black : Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Animated Container',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: isOn ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'OFF',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isOn ? Colors.white : Colors.black,
                      ),
                    ),
                    Switch(
                      value: isOn,
                      onChanged: (value) {
                        isOn = value;

                        setState(() {});
                      },
                    ),
                    Text(
                      'ON',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
