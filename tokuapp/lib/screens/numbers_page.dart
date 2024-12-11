import 'package:flutter/material.dart';
import 'package:tokoapp/models/item_model.dart';
import 'package:tokoapp/widgets/my_card_Item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff48342B),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return MyCardItem(
            cardItemModel: numbers[index],
          );
        },
      ),
    );
  }
}

List<ItemModel> numbers = [
  const ItemModel(image: "assets/images/numbers/number_one.png", jpName: "ichi", enName: "one", audioPath: "sounds/numbers/number_one_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_two.png", jpName: "ni", enName: "two", audioPath: "sounds/numbers/number_two_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_three.png", jpName: "san", enName: "three", audioPath: "sounds/numbers/number_three_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_four.png", jpName: "shi", enName: "four", audioPath: "sounds/numbers/number_four_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_five.png", jpName: "go", enName: "five", audioPath: "sounds/numbers/number_five_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_six.png", jpName: "roku", enName: "six", audioPath: "sounds/numbers/number_six_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_seven.png", jpName: "shichi", enName: "seven", audioPath: "sounds/numbers/number_seven_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_eight.png", jpName: "hachi", enName: "eight", audioPath: "sounds/numbers/number_eight_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_nine.png", jpName: "kyuu", enName: "nine", audioPath: "sounds/numbers/number_nine_sound.mp3", cardColor: Color(0xffFF9F3B)),
  const ItemModel(image: "assets/images/numbers/number_ten.png", jpName: "juu", enName: "ten", audioPath: "sounds/numbers/number_ten_sound.mp3", cardColor: Color(0xffFF9F3B)),
];
// function to create a list of widgets
// List<Widget> getList(List<Number> numbers) {
//   List<Widget> list = [];
//   for (int i = 0; i < numbers.length; i++) {
//     list.add(MyCardNumber(
//       onTap: () {},
//       number: numbers[i],
//     ));
//   }
//   return list;
// }
