import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweety_app/views/favourites_screen/favourites_screen.dart';
import 'package:sweety_app/views/home_screen/home_screen.dart';
import 'package:sweety_app/views/onboarding_screen/onboarding_view.dart';
import 'package:sweety_app/views/settings_screen/settings_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //using this page controller you can make beautiful animation effects
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 350), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded), label: "Settings"),
        ],
      ),
      body: SafeArea(
          //we can use page view or stacked(go from 1 to 3 and from 3 to 1 and you'll understand)
          child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: const [
          HomeScreen(),
          FavouritesScreen(),
          SettingsScreen(),
        ],
      )), // This trailing comma mak
    );
  }
}
