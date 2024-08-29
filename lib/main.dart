import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text("AgriBuddy",
             style: TextStyle(
               color: Colors.white,
               fontSize: 32,
             ),),
          ),
        ),
        body: Container(
          color: Colors.green.shade100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to AgriBuddy",
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 32,
                )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
