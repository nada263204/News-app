import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Models.dart';
import 'package:news_app/Widgets/Category_Card.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories =
  [
    CategoryModel(
      categoryName: 'Business',
      categoryimage: 'assets/Images/business.jpg'
      ),
    CategoryModel(
      categoryName: 'Entertainment',
      categoryimage: 'assets/Images/entertainment.jpg'
      ),
    CategoryModel(
      categoryName: 'Health',
      categoryimage: 'assets/Images/health.jpg'
      ),
    CategoryModel(
      categoryName: 'Science',
      categoryimage: 'assets/Images/science.png'
      ),
    CategoryModel(
      categoryName: 'Sports',
      categoryimage: 'assets/Images/sports.jpeg'
      ),
    CategoryModel(
      categoryName: 'Technology',
      categoryimage: 'assets/Images/technology.jpg'
      ),
      CategoryModel(
      categoryName: 'General',
      categoryimage: 'assets/Images/general.jpg'
      ),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Category_Card(
            category: categories[index],
          );
        },
      ),
    );
  }
}