import 'package:flutter/material.dart';


class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabView> {
  int _index = 0; //기본 페이지 index = 0
    late TabController _tabController;

  void _onTabTapped(int index) {
    // 탭이 선택되면 _currentIndex를 업데이트하여 현재 선택된 탭을 변경합니다.
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index, //현재 선택된 index
          showUnselectedLabels: true, //선택되지 않은 item의 label을 보여줌 = true
          onTap: (int index){
            _tabController.animateTo(index);
          },
          selectedItemColor: Colors.black, //선택했을 때 색
          unselectedItemColor: Colors.grey, // 선택하지 않은경우 색
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: '스케쥴',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'My',
            ),
          ],
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed, // 고정 크기 사용
    ),
    body : TabBarView(physics: const NeverScrollableScrollPhysics(),
   controller: _tabController,
   children: const [
      
   ], ),
    );
  }
}