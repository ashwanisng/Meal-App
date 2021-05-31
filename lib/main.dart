import 'package:flutter/material.dart';
import 'package:meal_app/screen/category_screen.dart';

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
        primaryColor: Color(0xffF9BA10),
      ),
      home: CategoriesScreen(),
    );
  }
}
