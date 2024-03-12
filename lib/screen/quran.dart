// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/const/constent.dart';
import 'package:quran/model/ayat_model.dart';
import 'package:quran/service/get_all_for.dart';

class Quran extends StatefulWidget {
  Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/image 4.png'),
            MyWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.ayatModel});

  AyatModel ayatModel = AyatModel(
      number: 1,
      surahName: 'surahName',
      surahNameEn: 'surahNameEn',
      type: 'type',
      text: 'text');

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: main_color,
      child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                '${ayatModel.number}',
                style: TextStyle(
                    color: main_color,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      ayatModel.surahNameEn,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(ayatModel.type,
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                ayatModel.surahName,
                style: TextStyle(
                    color: main_color,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Marhey'),
              )
            ],
          )),
    );
  }
}

class List_View extends StatelessWidget {
  List_View({super.key, required this.data});
  List<AyatModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
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
    futuer = LoopGet().LoopGetALL();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AyatModel>>(
        future: futuer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return List_View(
              data: snapshot.data!,
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
