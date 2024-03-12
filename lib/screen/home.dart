import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/screen/ayat.dart';
import 'package:quran/screen/quran.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> list = [Quran(), const Ayat()];

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (i) {
          x = i;
          setState(() {});
        },
        hoverColor: Colors.black,
        activeColor: Colors.white,
        curve: Curves.bounceInOut,
        iconSize: 50,
        padding: const EdgeInsets.all(20),
        backgroundColor: main_color,
        tabs: [
          const GButton(icon: Icons.query_stats_rounded, text: 'قرءان'),
          const GButton(
            icon: Icons.quora_rounded,
            text: 'احاديث',
          )
        ],
      ),
      body: list[x],
    );
  }
}
