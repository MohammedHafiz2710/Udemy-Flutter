import 'package:flutter/material.dart';
import 'package:toku_app/model/tune_model.dart';

class MyTuneCard extends StatelessWidget {
  final TuneModel tuneModel;
  const MyTuneCard({super.key, required this.tuneModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tuneModel.playtune();
        },
        child: Container(
          height: 110,
          color: tuneModel.tuneColor,
        ),
      ),
    );
  }
}
