import 'package:flutter/material.dart';
import 'package:news_app/model/categorycard_model.dart';
import 'package:news_app/wedgits/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.buildCategories,
  });

  final List<CategorycardModel> buildCategories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buildCategories.length,
        itemBuilder: (context, index) {
          return SizedBox(child: CategoryCard(categorycardModel: buildCategories[index]));
        },
      ),
    );
  }
}
