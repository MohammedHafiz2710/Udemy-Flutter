import 'package:flutter/material.dart';
import 'package:tokoapp/models/item_model.dart';
import 'package:tokoapp/widgets/my_card_Item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff48342B),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context, index) {
          return MyCardItem(
            cardItemModel: familyMember[index],
          );
        },
      ),
    );
  }
}

List<ItemModel> familyMember = [
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/father.wav',
    jpName: 'chich',
    enName: 'Father',
    image: 'assets/images/family_members/family_father.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/daughter.wav',
    jpName: 'Musume',
    enName: 'Daughter',
    image: 'assets/images/family_members/family_daughter.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/grand father.wav',
    jpName: 'ojisan',
    enName: 'Grand Father',
    image: 'assets/images/family_members/family_grandfather.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/mother.wav',
    jpName: 'Hahaoya',
    enName: 'Mother',
    image: 'assets/images/family_members/family_mother.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/grand mother.wav',
    jpName: 'Sobo',
    enName: 'Grand Mother',
    image: 'assets/images/family_members/family_grandmother.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/older bother.wav',
    jpName: 'niisan',
    enName: 'Older Brother',
    image: 'assets/images/family_members/family_older_brother.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/older sister.wav',
    jpName: 'ane',
    enName: 'Older Sister',
    image: 'assets/images/family_members/family_older_sister.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/son.wav',
    jpName: 'Musuko',
    enName: 'Son',
    image: 'assets/images/family_members/family_son.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/younger brohter.wav',
    jpName: 'ototo',
    enName: 'Younger Brother',
    image: 'assets/images/family_members/family_younger_brother.png',
  ),
  const ItemModel(
    cardColor: Color(0xff5C8B3D),
    audioPath: 'sounds/family_members/younger sister.wav',
    jpName: 'imouto',
    enName: 'Younger Sister',
    image: 'assets/images/family_members/family_younger_sister.png',
  ),
];
