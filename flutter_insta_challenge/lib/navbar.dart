import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/add_post_page.dart';
import 'package:flutter_insta_challenge/fav_page.dart';
import 'package:flutter_insta_challenge/home.dart';
import 'package:flutter_insta_challenge/search_page.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  PageController _controller = PageController();
  List<Widget> screens = [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    FavoritePage(),
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onItemTapped(int selectedIndex) {
    _controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        // unselectedItemColor: Colors.grey,
        // fixedColor: Colors.grey,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: "home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: "search",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              ),
              label: "post"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              ),
              label: "favorite"),
        ],
      ),
    );
  }
}
