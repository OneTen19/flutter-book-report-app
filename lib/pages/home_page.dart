// 인트로 페이지에서 들어가기 누르면 나오는 페이지
// 다른 페이지들로 이동할 수 있는 버튼이 있는 페이지

import 'package:flutter/material.dart';
import 'package:flutter_book_report_app/pages/book_page.dart';
import 'package:flutter_book_report_app/pages/profile_page.dart';
import 'package:flutter_book_report_app/pages/report_page.dart';
import 'package:flutter_book_report_app/pages/search_page.dart';
import 'package:flutter_book_report_app/theme/colors.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom navigation bar
  int _selectedIndex = 0;

  // this method is to change the selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    // Home page
    const ReportPage(),

    // Search page
    const SearchPage(),

    // Book page
    const BookPage(),

    // Profile page
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultAppBackgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // profile image
                // DrawerHeader를 이용해 프로필 이미지를 구현
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: DrawerHeader(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/images/profile_image.jpg',
                    ),
                  ),
                ),

                // Home
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.home, color: Colors.white),
                    title: const Text('Home',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      navigateBottomBar(0);
                      Navigator.pop(context);
                    },
                  ),
                ),

                // About
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.info, color: Colors.white),
                    title: const Text('About',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      navigateBottomBar(1);
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),

            // Logout
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: const Icon(Icons.logout, color: Colors.white),
                title:
                    const Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () {
                  navigateBottomBar(2);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
