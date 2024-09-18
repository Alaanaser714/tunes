import 'package:flutter/material.dart';
import 'package:tunes/models/tunes_model.dart';

class TunesItems extends StatelessWidget {
  final TunesModel tunes;
  const TunesItems({super.key, required this.tunes});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () {
              tunes.playSound();
            },
            child: Container(
              color:tunes.color
            )));
  }
}
