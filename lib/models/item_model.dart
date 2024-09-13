import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final String Sound;
  final Color color;
  const TuneModel({required this.Sound, required this.color});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(Sound));
  }
}
