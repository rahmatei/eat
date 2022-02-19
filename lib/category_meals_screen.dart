import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = "/category-meals";
  // final String id;
  // final String title;

  // CategoryMealsScreen({required this.id, required this.title});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: Center(
        child: Text("Recived Category Meals Data"),
      ),
    );
  }
}
