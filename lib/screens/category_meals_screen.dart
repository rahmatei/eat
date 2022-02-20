import 'package:eat/dummy_category.dart';
import 'package:eat/widget/meal_item.dart';
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
    final meals= DUMMY_MEALS.where((item){
      return item.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: Center(
        child: ListView.builder(itemBuilder: (ctx,index){
            return MealItem(title: meals[index].title, imageUrl: meals[index].imageUrl, duration: meals[index].duration, complexity: meals[index].complexity, affordability: meals[index].affordability,) ; 
        },itemCount: meals.length,),
      ),
    );
  }
}
