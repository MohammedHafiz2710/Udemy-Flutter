import 'package:flutter/material.dart';
import 'package:news_app/model/categorycard_model.dart';
import 'package:news_app/wedgits/category_list_view.dart';
import 'package:news_app/wedgits/news_list_view_builder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("News", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
              Text("Cloud", style: TextStyle(color: Colors.orange, fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 95,
                  child: CategoryListView(
                    buildCategories: buildCategories,
                  ),
                ),
              ),
              const NewsListViewBuilder(
                category: "top",
              ),
            ],
          ),
        ));
  }

  final List<CategorycardModel> buildCategories = const [
    CategorycardModel(image: "assets/business.avif", categoryName: "Business"),
    CategorycardModel(image: "assets/entertaiment.avif", categoryName: "entertainment"),
    CategorycardModel(image: "assets/general.avif", categoryName: "lifestyle"),
    CategorycardModel(image: "assets/health.avif", categoryName: "Health"),
    CategorycardModel(image: "assets/science.avif", categoryName: "Science"),
    CategorycardModel(image: "assets/sports.avif", categoryName: "Sports"),
    CategorycardModel(image: "assets/technology.jpeg", categoryName: "Technology", paddingRight: 0),
  ];
}
