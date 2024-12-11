import 'package:flutter/material.dart';
import 'package:tokoapp/screens/color_page.dart';
import 'package:tokoapp/screens/family_members_page.dart';
import 'package:tokoapp/screens/numbers_page.dart';
import 'package:tokoapp/screens/phrases_page.dart';
import 'package:tokoapp/widgets/my_card_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff48342B),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Mycard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            color: const Color(0xffFF9F3B),
            icon: Icons.format_list_numbered_rounded,
            title: "Numbers",
          ),
          Mycard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
            color: const Color(0xff5C8B3D),
            icon: Icons.family_restroom_rounded,
            title: "family Members",
          ),
          Mycard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorPage();
              }));
            },
            color: const Color(0xff844CAF),
            icon: Icons.color_lens_rounded,
            title: "Colors",
          ),
          Mycard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            color: const Color(0xff2E86C1),
            icon: Icons.speaker_notes_rounded,
            title: "Phrases",
          ),
        ],
      ),
    );
  }
}
