
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color tuneColor;
  final String tunePath;
  const TuneModel({required this.tuneColor, required this.tunePath});

  void playtune() {
    final player = AudioPlayer();
    player.play(AssetSource(tunePath));
  }
}
