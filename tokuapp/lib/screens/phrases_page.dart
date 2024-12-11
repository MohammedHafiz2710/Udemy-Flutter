import 'package:flutter/material.dart';
import 'package:tokoapp/models/item_model.dart';
import 'package:tokoapp/widgets/my_card_Item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff48342B),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return MyCardItem(
            cardItemModel: phrases[index],
          );
        },
      ),
    );
  }
}

List<ItemModel> phrases = [
  const ItemModel(
    audioPath: 'sounds/phrases/i_love_programming.wav',
    jpName: 'Watashi wa puroguramingu ga daisukidesu',
    enName: 'I love programming',
    cardColor: Color(0xff2E86C1),
  ),
  const ItemModel(audioPath: 'sounds/phrases/programming_is_easy.wav', jpName: 'Puroguramingu wa kantandesu', enName: 'Programming is easy', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/i_love_anime.wav', jpName: 'Watashi wa anime ga daisukidesu', enName: 'I love anime', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/where_are_you_going.wav', jpName: 'Doko ni iku no', enName: 'Where are you going', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/what_is_your_name.wav', jpName: 'namae wa nanidesu ka?', enName: 'What is your name?', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/how_are_you_feeling.wav', jpName: 'Go kibun wa ikagadesu ka.', enName: 'How are you feeling?', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/are_you_coming.wav', jpName: 'Kimasu ka', enName: 'Are you coming?', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/yes_im_coming.wav', jpName: 'Hai, ikimasu', enName: 'Yes I am coming', cardColor: Color(0xff2E86C1)),
  const ItemModel(audioPath: 'sounds/phrases/dont_forget_to_subscribe.wav', jpName: 'Kōdoku suru koto o wasurenaide kudasai', enName: 'Don\'t forget to subscribe', cardColor: Color(0xff2E86C1)),
];
