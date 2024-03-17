import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/screen/home.dart';

class Splach extends StatelessWidget {
  Splach({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff180b37),
        body: FlutterSplashScreen.fadeIn(
          duration: Duration(seconds: 5),
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: SizedBox(
              child: Column(
                children: [
                  Image.asset("assets/quran 1.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Quran',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: main_color),
                  )
                ],
              ),
            ),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: Home(),
        ));
  }
}
