import 'package:flutter/material.dart';
import 'package:meal_app/model/category_item.dart';
import 'package:meal_app/model/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Meal'),
      ),
      body: GridView(
        children: dummyCategory
            .map((e) => CategoryItem(title: e.title, color: e.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
