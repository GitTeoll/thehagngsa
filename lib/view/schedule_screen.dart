import 'package:flutter/material.dart';

import '../widgets/event_row_card.dart';

class ScheduleScreen extends StatelessWidget {
  
  const ScheduleScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
        );
  }
}