
import 'package:flutter/material.dart';
import '../widgets/event_row_card.dart';
import '../widgets/event_widget.dart';
import '../widgets/top_thehangsa.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int _currentIndex = 0; // 현재 선택된 탭 인덱스

  // 탭이 선택될 때 호출되는 함수
  void _onTabTapped(int index) {
    // 탭이 선택되면 _currentIndex를 업데이트하여 현재 선택된 탭을 변경합니다.
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TopThehangsa(),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    EventWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            " 행사 세트",
                            style: TextStyle(
                                color: Color(0xFF1F1F21),
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    RowEventCard(
                      img: 'assets/images/major.jpg',
                      eventname: "메이저리그 체육대회",
                      price: "150만 원",
                    ),
                    RowEventCard(
                      img: 'assets/images/minor.jpg',
                      eventname: "마이너리그 체육대회",
                      price: "150만 원",
                    ),
                    RowEventCard(
                      img: 'assets/images/zaerong.jpg',
                      eventname: "대형 재롱잔치",
                      price: "150만 원",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        // BottomNavigationBar 추가
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showUnselectedLabels: true,
          onTap: _onTabTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
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
      ),
    );
  }
}