import 'package:flutter/material.dart';
import 'package:thehangsa/view/schedule_screen.dart';
import '../const/colors.dart';
import '../const/fonts.dart';
import 'home_screen.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  int _index = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: 4, vsync: this, initialIndex: _index);

    _tabController.addListener(tabListener);
  }

  void tabListener() {
    setState(
      () {
        _index = _tabController.index;
      },
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cMainBacgroundColor,
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          HomeScreen(),
          ScheduleScreen(),
          Center(
            child: Text('hi'),
          ),
          Center(
            child: Text('hi'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        showUnselectedLabels: true,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        selectedItemColor: cTabViewSelectedColor,
        unselectedItemColor: cTabViewUnselectedColor,
        selectedLabelStyle: const TextStyle(
          fontFamily: sMainTextStyle,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: sMainTextStyle,
          fontSize: 12,
        ),
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
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
