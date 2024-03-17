import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/model/ayat_model.dart';

class Text_All extends StatelessWidget {
  Text_All({super.key});
  @override
  Widget build(BuildContext context) {
    final AyatModel ayat =
        ModalRoute.of(context)!.settings.arguments as AyatModel;

    return Scaffold(
      backgroundColor: Color(0xff180b37),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff180b37),
        centerTitle: true,
        title: Text(
          '  سوره   ${ayat.surahName} ',
          style: const TextStyle(
              color: main_color,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Marhey'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        '(بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ )',
                        style: TextStyle(
                            color: main_color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Marhey'),
                      ),
                      Text(
                        ayat.text,
                        style: const TextStyle(
                            color: Colors.black,
                            height: 2,
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Marhey'),
                      ),
                      const Text(
                        'صٍـدَّقَْ اٌلِـلِـهٌ اٌلِـعٍَظَِيٌـمِـ',
                        style: TextStyle(
                            color: main_color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Marhey'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
