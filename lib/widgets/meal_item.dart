import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  void selected() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selected,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
