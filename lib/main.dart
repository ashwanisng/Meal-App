import 'package:flutter/material.dart';
import 'package:meal_app/model/dummy_data.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/screen/category_meal_screen.dart';
import 'package:meal_app/screen/details_meal_screen.dart';
import 'package:meal_app/screen/filters_screen.dart';
import 'package:meal_app/screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> avilableMeal = dummyMeal;

  void _setFilter(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
    });
  }

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
        '/category-meal': (context) => CategoryMealScreen(avilableMeal),
        '/meal-details': (context) => DetailsMealScreen(),
        '/filters': (context) => FiltersScreen(_setFilter),
      },
    );
  }
}
