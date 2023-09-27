import 'package:flutter/material.dart';
import 'package:thehangsa/screen/home_screen.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: const HomeScreen(),

      // BottomNavigationBar 추가
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue, // 선택된 아이템 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이템 색상
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '이벤트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "My",
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10), // 선택된 아이템의 폰트 크기
        unselectedLabelStyle:
            const TextStyle(fontSize: 10), // 선택되지 않은 아이템의 폰트 크기
      ),
    );
  }
}
