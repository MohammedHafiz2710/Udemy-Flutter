import 'package:flutter/material.dart';
import 'package:tokoapp/models/item_model.dart';
import 'package:tokoapp/widgets/my_card_Item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff48342B),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return MyCardItem(
            cardItemModel: color[index],
          );
        },
      ),
    );
  }
}

List<ItemModel> color = [
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/black.wav',
    jpName: 'Kuro',
    enName: 'Black',
    image: 'assets/images/colors/color_black.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/brown.wav',
    jpName: 'Chairo',
    enName: 'Brown',
    image: 'assets/images/colors/color_brown.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/dusty yellow.wav',
    jpName: 'Kibiiro',
    enName: 'Dusty Yellow',
    image: 'assets/images/colors/color_dusty_yellow.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/gray.wav',
    jpName: 'Gurē',
    enName: 'Gray',
    image: 'assets/images/colors/color_gray.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/green.wav',
    jpName: 'Midori',
    enName: 'Green',
    image: 'assets/images/colors/color_green.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/red.wav',
    jpName: 'Akai',
    enName: 'Red',
    image: 'assets/images/colors/color_red.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/white.wav',
    jpName: 'Shiro',
    enName: 'White',
    image: 'assets/images/colors/color_white.png',
  ),
  const ItemModel(
    cardColor: Color(0xff844CAF),
    audioPath: 'sounds/colors/yellow.wav',
    jpName: 'Kiiro',
    enName: 'Yellow',
    image: 'assets/images/colors/yellow.png',
  ),
];
