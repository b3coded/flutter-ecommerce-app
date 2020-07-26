import 'package:ecommerceapp/ui/pages/home.dart';
import 'package:ecommerceapp/ui/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomTabsLayout extends StatefulWidget {
  @override
  _BottomTabsLayoutState createState() => _BottomTabsLayoutState();
}

class _BottomTabsLayoutState extends State<BottomTabsLayout> {
  List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Theme.of(context).primaryColor,
        iconSize: 25,
        selectedIconTheme: IconThemeData(size: 25),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            title: Text(
              'Home',
              maxLines: 1,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.shopping_cart),
            title: Text(
              'Shop',
              maxLines: 1,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.shopping_bag),
            title: Text(
              'Bag',
              maxLines: 1,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text(
              'Favorites',
              maxLines: 1,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text(
              'Profile',
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
