// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/model/categorycard_model.dart';
import 'package:news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategorycardModel categorycardModel;
  const CategoryCard({
    super.key,
    required this.categorycardModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryView(category: categorycardModel.categoryName);
          },
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(right: categorycardModel.paddingRight ?? 16),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(categorycardModel.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 180,
          height: 95,
          child: Center(child: Text(categorycardModel.categoryName, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
