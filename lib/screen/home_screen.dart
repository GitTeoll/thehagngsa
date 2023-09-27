import 'package:flutter/material.dart';
import 'package:thehangsa/component/event_list.dart';
import 'package:thehangsa/layout/default_layout.dart';
import 'package:thehangsa/widget/event_widget.dart';
import 'package:thehangsa/widget/top_thehangsa.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: SingleChildScrollView(
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
                          ),
                        )
                      ],
                    ),
                  ),
                  EventList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
