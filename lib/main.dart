import 'package:flutter/material.dart';

import 'WIdgets/event_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; 
 // 현재 선택된 탭 인덱스
  void _onTabTapped(int index) {
    // 탭이 선택되면 _currentIndex를 업데이트하여 현재 선택된 탭을 변경합니다.
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                color: const Color(0xFF2F2F2F),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "더행사",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'ChangwonDangamAsac'),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF484848),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "공지",
                              style: TextStyle(
                                  color: Color(0xFFB6FFCB), fontSize: 13),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "더 행사가 출시되었어요.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const EventWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 76,
                                    height: 76,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/major.jpg'),
                                            fit: BoxFit.cover),
                                        color: const Color(0xFFD9D9D9),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "메이저리그 체육대회",
                                                  style: TextStyle(
                                                      color: Color(0xFF1F1F21),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w700),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "150만 원",
                                                  style: TextStyle(
                                                      color: Color(0xFF3E3E40),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_ios_rounded)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 76,
                                    height: 76,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/minor.jpg'),
                                            fit: BoxFit.cover),
                                        color: const Color(0xFFD9D9D9),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "마이너리그 체육대회",
                                                  style: TextStyle(
                                                      color: Color(0xFF1F1F21),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w700),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "150만 원",
                                                  style: TextStyle(
                                                      color: Color(0xFF3E3E40),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_ios_rounded)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 76,
                                    height: 76,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/zaerong.jpg'),
                                            fit: BoxFit.cover),
                                        color: const Color(0xFFD9D9D9),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "대형 재롱잔치",
                                                  style: TextStyle(
                                                      color: Color(0xFF1F1F21),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w700),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "150만 원",
                                                  style: TextStyle(
                                                      color: Color(0xFF3E3E40),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_ios_rounded)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
  unselectedLabelStyle: const TextStyle(fontSize: 10), // 선택되지 않은 아이템의 폰트 크기
),



      ),
    );
  }
}
