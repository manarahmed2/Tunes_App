import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_app/components/category_container_item.dart';
import 'package:tunes_app/models/item_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<ItemModel> items = const [
    ItemModel(Sound: "sounds/note1.wav", color: Colors.red),
    ItemModel(Sound: "sounds/note2.wav", color: Colors.orange),
    ItemModel(Sound: "sounds/note3.wav", color: Colors.yellow),
    ItemModel(Sound: "sounds/note4.wav", color: Colors.green),
    ItemModel(Sound: "sounds/note5.wav", color: Colors.teal),
    ItemModel(Sound: "sounds/note6.wav", color: Colors.blue),
    ItemModel(Sound: "sounds/note7.wav", color: Colors.purple)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Center(
          child: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Pacifico",
            ),
          ),
        ),
      ),
      body: Column(
        children: items.map((item) {
          return Expanded(
            child: CategoryContainerItem(
              item: item,
            ),
          );
        }).toList(),
      ),
    );
  }
}
