import 'package:eat/screens/category_screen.dart';
import 'package:eat/screens/favorite_Screen.dart';
import 'package:eat/widget/main_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoryScreen(),
      'title': 'Category',
    },
    {
      'page': FavoriteScreen(),
      'title': 'Favorite',
    }
  ];
  int _pageSelectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _pageSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_pageSelectedIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_pageSelectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          currentIndex: _pageSelectedIndex,
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.shifting,
          onTap: _selectedPage,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              label: 'category',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              label: 'favorite',
            ),
          ]),
    );
  }
}
