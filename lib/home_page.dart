// 인트로 페이지에서 들어가기 누르면 나오는 페이지
// 다른 페이지들로 이동할 수 있는 버튼이 있는 페이지

import 'package:flutter/material.dart';
import 'package:flutter_book_report_app/pages/library_page.dart';
import 'package:flutter_book_report_app/pages/profile_page.dart';
import 'package:flutter_book_report_app/pages/main_page.dart';
import 'package:flutter_book_report_app/pages/search_page.dart';
import 'package:flutter_book_report_app/theme/colors.dart';

import 'components/bottom_nav_bar.dart';

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
    const MainPage(),

    // Search page
    const SearchPage(),

    // Library page
    const LibraryPage(),

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
                // DrawerHeader는 자동적으로 bottom border를 생성해서 이를 없애기 위해 Theme 위젯으로 감싸서 커스터마이징 해줌
                // 이 방법 외에는 main 파일에서 프로젝트 전체 Theme 데이터를 설정해 줄 수 있지만,
                // 개인적으로 페이지 내부의 변수를 해당 파일 내에서 해결하는 걸 선호하기에 이 방법을 사용
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      dividerTheme:
                          const DividerThemeData(color: Colors.transparent),
                    ),
                    child: DrawerHeader(
                      margin: EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/profile_image.jpg',
                      ),
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
