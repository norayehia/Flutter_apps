import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),

      themeMode: ThemeMode.dark,
      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: HomePage(),
      ),
    );
  }
}

