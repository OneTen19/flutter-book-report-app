import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: GNav(
        tabBackgroundColor: Colors.grey.shade100, // 선택된 부분 뒷 배경색
        tabActiveBorder: Border.all(color: Colors.white), // 선택된 부분 테두리 색
        activeColor: Colors.grey.shade700, // 선택된 부분 아이콘 색
        color: Colors.grey, // 선택되지 않은 부분 아이콘 색
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        padding: EdgeInsets.all(20),

        onTabChange: (value) => onTabChange!(value), // 탭이 바뀌면 onTabChange 함수 호출

        tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.book,
          text: 'Book',
        ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
        ),
      ],),
    );
  }
}
