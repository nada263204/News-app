import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Models.dart';

class Category_Card extends StatelessWidget {
  Category_Card({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0
      ),
      child: Container(
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.categoryimage)),
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.amber
          ),
          child:Center(child:
           Text(category.categoryName,
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 16.0
          ),)),
        ),
    );
  }
}