import 'package:flutter/material.dart';
import 'package:quran/screen/A.dart';
import 'package:quran/screen/all_text.dart';
import 'package:quran/screen/home.dart';
import 'package:quran/screen/splach.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        'home': (context) => Home(),
        'text': (context) => Text_All(),
        'text_a': (context) => Text_All_A(),
        'splach': (context) => Splach()
      },
      initialRoute: 'splach',
    );
  }
}
