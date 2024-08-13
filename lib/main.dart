import 'package:flutter/material.dart';
import 'package:test1/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
              actionsIconTheme: IconThemeData(size: 30, color: Colors.white))),
      home: const MyHomePage(),
    );
  }
}
