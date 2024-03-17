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
  List<Widget> list = [Quran(), Ayat()];

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
          const GButton(
            icon: Icons.book,
            text: 'قرءان',
            textStyle: TextStyle(
                color: Colors.white,
                height: 2,
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Marhey'),
          ),
          const GButton(
            icon: Icons.book,
            text: 'احاديث',
            textStyle: TextStyle(
                color: Colors.white,
                height: 2,
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Marhey'),
          )
        ],
      ),
      body: list[x],
    );
  }
}
