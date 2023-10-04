import 'package:flutter/material.dart';
import '../WIdgets/event_widget.dart';
import '../WIdgets/top_thehangsa.dart';
import '../widgets/event_row_card.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Pretendard',
                        ),
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
    );
  }
}
