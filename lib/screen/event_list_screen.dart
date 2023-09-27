import 'package:flutter/material.dart';
import 'package:thehangsa/component/event_list.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

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
            child: EventList(),
          ),
        ],
      ),
    );
  }
}
