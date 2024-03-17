// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/model/A_model.dart';
import 'package:quran/service/get_all_quran.dart';

class Ayat extends StatefulWidget {
  Ayat({super.key});

  @override
  State<Ayat> createState() => _QuranState();
}

class _QuranState extends State<Ayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff180b37),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                  child: Image.asset(
                      'assets/—Pngtree—ramadan illustration muslim family praying_7466838 2.png')),
            ),
            const MyWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.ayatModel});

  A_Model ayatModel = A_Model(number: 1, text: 'text');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'text_a', arguments: ayatModel);
      },
      child: Card(
        shadowColor: main_color,
        child: Container(
            child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                '${ayatModel.text}',
                style: const TextStyle(
                    color: Color(0xff180b37),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 60,
            ),
          ],
        )),
      ),
    );
  }
}

class List_View extends StatelessWidget {
  List_View({super.key, required this.data});
  List<A_Model> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 114,
        itemBuilder: (context, i) {
          return CustomCard(
            ayatModel: data[i],
          );
        });
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var futuer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // futuer = LoopGet().LoopGetALL();
    futuer = Service_Get().Get_A();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<A_Model>>(
        future: futuer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
              child: List_View(
                data: snapshot.data!,
              ),
            );
          } else {
            return Container(child: const CircularProgressIndicator());
          }
        });
  }
}
