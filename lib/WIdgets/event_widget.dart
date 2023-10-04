import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/fonts.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: cEventWidgetColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 10),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  " 더행사 첫 이벤트",
                  style: TextStyle(
                    color: cEventWidgetSecondaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: sMainTextStyle,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 200,
                  height: 68,
                  child: Text(
                    "신규가입 10% 할인쿠폰 증정 이벤트",
                    style: TextStyle(
                      color: cMainTextColorWhite,
                      fontSize: 20,
                      fontFamily: sMainTextStyle,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: cEvnetWidgetArrowColor,
                  ),
                  child: const Icon(Icons.arrow_right_alt_rounded),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
