import 'package:eat/screens/category_screen.dart';
import 'package:eat/screens/favorite_Screen.dart';
import 'package:flutter/material.dart';

class TabsScreen1 extends StatefulWidget {
  @override
  State<TabsScreen1> createState() => _TabsScreen1State();
}

class _TabsScreen1State extends State<TabsScreen1> {
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
