// 인트로 페이지에서 들어가기 누르면 나오는 페이지
// 다른 페이지들로 이동할 수 있는 버튼이 있는 페이지

import 'package:flutter/material.dart';
import 'package:flutter_book_report_app/pages/book_page.dart';
import 'package:flutter_book_report_app/pages/profile_page.dart';
import 'package:flutter_book_report_app/pages/report_page.dart';
import 'package:flutter_book_report_app/pages/search_page.dart';

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
      backgroundColor: Color(0xffece6d2),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
