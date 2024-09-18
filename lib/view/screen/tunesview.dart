// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tunes/models/tunes_model.dart';
import 'package:tunes/view/screen/widgets/tunes_items.dart';

class Tunesview extends StatelessWidget {
  const Tunesview({super.key});

  final List<TunesModel> tunes = const [
    TunesModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TunesModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TunesModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TunesModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TunesModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TunesModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TunesModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff243139),
        centerTitle: true,
        title: const Text(
          "Tunes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunes.map((e) => TunesItems(tunes: e)).toList()
      ),
    );
  }
}
