import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_app/components/category_container_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final player = AudioPlayer();

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
        children: [
          Expanded(
            child: CategoryContainerItem(
              color: Colors.red,
              onTap: () {
                player.play(AssetSource("sounds/note1.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.orange,
              onTap: () {
                player.play(AssetSource("sounds/note2.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.yellow,
              onTap: () {
                player.play(AssetSource("sounds/note3.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.green,
              onTap: () {
                player.play(AssetSource("sounds/note4.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.teal,
              onTap: () {
                player.play(AssetSource("sounds/note5.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.blue,
              onTap: () {
                player.play(AssetSource("sounds/note6.wav"));
              },
            ),
          ),
          Expanded(
            child: CategoryContainerItem(
              color: Colors.purple,
              onTap: () {
                player.play(AssetSource("sounds/note7.wav"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
