import 'package:flutter/material.dart';
import 'package:meal_app/model/dummy_data.dart';
import 'package:meal_app/widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String categoryId;
  // final String title;

  // CategoryMealScreen(this.categoryId, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeal = dummyMeal.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: ListView.builder(
          itemCount: categoryMeal.length,
          itemBuilder: (context, index) {
            return MealItem(
                title: categoryMeal[index].title,
                imageUrl: categoryMeal[index].imageUrl,
                duration: categoryMeal[index].duration,
                complexity: categoryMeal[index].complexity,
                affordability: categoryMeal[index].affordability);
          }),
    );
  }
}
