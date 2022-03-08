import 'dart:ui';

import 'package:eat/screens/filters_screen.dart';
import 'package:flutter/material.dart';

Widget buildListTitle(String title, Icon icon, Function() selectedItem) {
  return ListTile(
    leading: icon,
    title: Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    ),
    onTap: selectedItem,
  );
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            alignment: Alignment.centerLeft,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Text(
              'Cooking',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          buildListTitle(
            'Meals',
            Icon(Icons.restaurant),
            () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTitle(
            'settings',
            Icon(Icons.settings),
            () {
              Navigator.of(context).pushNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
