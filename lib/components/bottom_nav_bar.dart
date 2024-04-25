import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../theme/colors.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GNav(
        duration: Duration(milliseconds: 100), // 탭이 바뀌는데 걸리는 시간
        tabBackgroundColor: Colors.brown, // 선택된 부분 뒷 배경색
        activeColor: Colors.white, // 선택된 부분 아이콘 색

        tabBorder: Border.all(color: Colors.brown, width: 2), // 테두리 색

        color: Colors.brown, // 선택되지 않은 부분 아이콘 색
        hoverColor: Colors.grey.shade100, // 선택되지 않은 부분 터치시 배경색

        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 아이콘 간격
        tabBorderRadius: 20, // 탭 모서리 둥글기

        padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),


        onTabChange: (value) => onTabChange!(value), // 탭이 바뀌면 onTabChange 함수 호출

        tabs: [
          GButton(
            icon: Icons.home,
            text: ' 홈',
            textStyle: TextStyle(fontFamily: "UhBee", color: Colors.white),
          ),
          GButton(
            icon: Icons.search,
            text: ' 검색',
            textStyle: TextStyle(fontFamily: "UhBee", color: Colors.white),
          ),
          GButton(
            icon: Icons.menu_book,
            text: ' 서재',
            textStyle: TextStyle(fontFamily: "UhBee", color: Colors.white),
          ),
          GButton(
            icon: Icons.more_horiz,
            text: ' 더보기',
            textStyle: TextStyle(fontFamily: "UhBee", color: Colors.white),
          ),
        ],
      ),
    );
  }
}
