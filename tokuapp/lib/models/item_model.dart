import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// note: this is the model class for the item in the list
// note2: phrasing have no image, so it is nullable
class ItemModel {
  final Color? cardColor;
  final String? image;
  final String jpName;
  final String enName;
  final String audioPath;
  const ItemModel({
    required this.cardColor,
    this.image,
    required this.jpName,
    required this.enName,
    required this.audioPath,
  });

  void playAudio() {
    final player = AudioPlayer();
    player.play(AssetSource(
      audioPath,
    ));
  }
}
