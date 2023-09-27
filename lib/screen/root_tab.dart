import 'package:flutter/material.dart';
import 'package:thehangsa/screen/event_list_screen.dart';
import 'package:thehangsa/screen/home_screen.dart';
import 'package:thehangsa/const/colors.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: _currentIndex,
    );

    _tabController.addListener(_onTabTapped);
  }

  @override
  void dispose() {
    /// tabListener 지우기
    _tabController.removeListener(_onTabTapped);

    super.dispose();
  }

  void _onTabTapped() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          EventListScreen(),
          Center(child: Text('채팅')),
          Center(child: Text('My')),
        ],
      ),

      // BottomNavigationBar 추가
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        selectedItemColor: kPrimaryDarkColor, // 선택된 아이템 색상
        unselectedItemColor: kPrimaryDarkColor, // 선택되지 않은 아이템 색상
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
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ), // 선택되지 않은 아이템의 폰트 크기
      ),
    );
  }
}
