import 'package:flutter/material.dart';

class TopThehangsa extends StatelessWidget {
  const TopThehangsa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    style: TextStyle(color: Color(0xFFB6FFCB), fontSize: 13),
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
    );
  }
}
