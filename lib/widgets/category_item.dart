import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({required this.id, required this.title, required this.color});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/category-meal', arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
