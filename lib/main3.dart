// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'widget/event_row_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int _currentIndex = 1; // 현재 선택된 탭 인덱스

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
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  Text(
                    "예약된 세트",
                    style: TextStyle(
                      color: Color(0xFF1F1F21),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox()
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 15),
                child: Column(
                  children: [
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
          selectedItemColor: Colors.blue,
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
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
