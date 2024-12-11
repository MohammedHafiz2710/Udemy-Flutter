// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokoapp/models/item_model.dart';

class MyCardItem extends StatelessWidget {
  final ItemModel cardItemModel;
  const MyCardItem({
    super.key,
    required this.cardItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: cardItemModel.cardColor,
      child: ListTile(
        contentPadding: const EdgeInsets.all(7),
        leading: cardItemModel.image != null ? Image.asset(cardItemModel.image!) : null,
        title: Text(
          cardItemModel.jpName,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        subtitle: Text(
          cardItemModel.enName,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        trailing: IconButton(
            padding: const EdgeInsets.all(0),
            iconSize: 40,
            onPressed: () {
              cardItemModel.playAudio();
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            )),
      ),
    );
  }
}
