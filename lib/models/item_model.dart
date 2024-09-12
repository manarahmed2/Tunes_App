import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String Sound;
  final Color color;
  const ItemModel({required this.Sound, required this.color});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(Sound));
  }
}
