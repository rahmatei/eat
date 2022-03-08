import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:eat/dummy_category.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/detail-meal";

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainerBox(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 300,
        height: 200,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: child);
  }

  Widget build(BuildContext context) {
    final arguman = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((item) => item.id == arguman);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'ingredients'),
            buildContainerBox(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'steps'),
            buildContainerBox(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('# ${index + 1}')),
                    title: Text(selectedMeal.steps[index]),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ]),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
