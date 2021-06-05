import 'package:flutter/material.dart';

class DetailsMealScreen extends StatelessWidget {
  static const routeName = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Text(mealId),
      ),
    );
  }
}
