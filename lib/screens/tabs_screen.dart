import 'package:eat/screens/category_screen.dart';
import 'package:eat/screens/favorite_Screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meal'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Category',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'favorite',
                )
              ],
            ),
          ),
          body: TabBarView(children: [CategoryScreen(), FavoriteScreen()]),
        ));
  }
}
