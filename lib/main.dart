import 'package:flutter/material.dart';
import 'package:meal_app/screen/category_meal_screen.dart';
import 'package:meal_app/screen/details_meal_screen.dart';
import 'package:meal_app/screen/filters_screen.dart';
import 'package:meal_app/screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'),
            ),
      ),
      home: TabsScreen(),
      routes: {
        '/category-meal': (context) => CategoryMealScreen(),
        '/meal-details': (context) => DetailsMealScreen(),
        '/filters': (context) => FiltersScreen(),
      },
    );
  }
}
