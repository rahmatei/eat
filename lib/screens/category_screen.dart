import 'package:eat/widget/category_item.dart';
import 'package:eat/dummy_category.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeliMeals"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: GridView(
            children: [
              ...DUMMY_CATEGORIES
                  .map((item) => CategoryItem(
                      id: item.id, title: item.title, color: item.color))
                  .toList()
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
          ),
        ),
      ),
    );
  }
}
