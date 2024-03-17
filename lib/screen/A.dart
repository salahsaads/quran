import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/model/A_model.dart';

class Text_All_A extends StatelessWidget {
  Text_All_A({super.key});
  @override
  Widget build(BuildContext context) {
    final A_Model ayat = ModalRoute.of(context)!.settings.arguments as A_Model;

    return Scaffold(
      backgroundColor: Color(0xff180b37),
      appBar: AppBar(
        backgroundColor: Color(0xff180b37),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          '',
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
                      Text(
                        ayat.text,
                        style: const TextStyle(
                            color: Colors.black,
                            height: 2,
                            fontSize: 26,
                            // fontWeight: FontWeight.bold,
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
