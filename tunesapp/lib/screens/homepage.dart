import 'package:flutter/material.dart';
import 'package:toku_app/model/tune_model.dart';
import 'package:toku_app/widgets/my/my_tune_card.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});
  final List<TuneModel> tuneItem = const [
    TuneModel(tuneColor: Colors.red, tunePath: 'sounds/note1.wav'),
    TuneModel(tuneColor: Colors.orange, tunePath: 'sounds/note2.wav'),
    TuneModel(tuneColor: Colors.yellow, tunePath: 'sounds/note3.wav'),
    TuneModel(tuneColor: Colors.green, tunePath: 'sounds/note4.wav'),
    TuneModel(tuneColor: Color(0xff009587), tunePath: 'sounds/note5.wav'),
    TuneModel(tuneColor: Colors.blue, tunePath: 'sounds/note6.wav'),
    TuneModel(tuneColor: Colors.purple, tunePath: 'sounds/note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF243139),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tuneItem
            .map((tuneModel) => MyTuneCard(
                  tuneModel: tuneModel,
                ))
            .toList(),
      ),
    );
  }

  // List<MyTuneCard> getTuneCard() {
  //   List<MyTuneCard> item = [];
  //   for (var color in tuneColors) {
  //     item.add(MyTuneCard(color: color));
  //   }
  //   return item;
  // }
}
