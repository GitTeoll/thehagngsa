import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const/colors.dart';
import '../const/fonts.dart';

class TopThehangsa extends StatelessWidget {
  const TopThehangsa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: cTopBackgroundColor,
      statusBarBrightness: Brightness.light, // 텍스트의 밝기 설정 (예: 검은색 아이콘 및 흰색 텍스트)
      statusBarIconBrightness: Brightness.light, // 아이콘의 밝기 설정 (예: 검은색 아이콘)
    ));
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      color: cTopBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                color: cTopBackgroundColor,
                child: const SizedBox(
                  height: 40,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "더행사",
                style: TextStyle(
                  color: cThehangsaTextColor,
                  fontSize: 24,
                  fontFamily: sTitleTextStyle,
                ),
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
              color: cTopSecondaryBackgroundColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "공지",
                    style: TextStyle(
                      color: cHighlightTextColor,
                      fontSize: 13,
                      fontFamily: sMainTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "더 행사가 출시되었어요.",
                    style: TextStyle(
                      color: cTopInfoTextColor,
                      fontSize: 13,
                      fontFamily: sMainTextStyle,
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
