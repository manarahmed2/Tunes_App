import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_app/components/category_container_item.dart';
import 'package:tunes_app/models/item_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<TuneModel> items = const [
    TuneModel(Sound: "sounds/note1.wav", color: Colors.red),
    TuneModel(Sound: "sounds/note2.wav", color: Colors.orange),
    TuneModel(Sound: "sounds/note3.wav", color: Colors.yellow),
    TuneModel(Sound: "sounds/note4.wav", color: Colors.green),
    TuneModel(Sound: "sounds/note5.wav", color: Colors.teal),
    TuneModel(Sound: "sounds/note6.wav", color: Colors.blue),
    TuneModel(Sound: "sounds/note7.wav", color: Colors.purple)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff253238),
          centerTitle: true,
          title: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Pacifico",
            ),
          ),
        ),
        body: Column(
            children: items.map((item) {
          return TuneItem(item: item);
        }).toList()));
  }
}
