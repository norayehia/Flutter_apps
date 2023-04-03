import 'package:flutter/material.dart';
import 'screens/register.dart';
import 'screens/home.dart';
//@dart=2.9;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Records of user',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
//https://suragch.medium.com/simple-sqflite-database-example-in-flutter-e56a5aaa3f91
//https://docs.flutter.dev/cookbook/persistence/sqlite
//