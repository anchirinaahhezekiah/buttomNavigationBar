import 'package:flutter/material.dart';
import 'package:learning/Pages/first_page.dart';
import 'package:learning/Pages/homepage.dart';
import 'package:learning/Pages/profile.dart';
import 'package:learning/Pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => Homepage(),
        '/settingspage': (context) => Settings(),
        '/profile': (context) => ProfilePage()
      },
    );
  }
}
