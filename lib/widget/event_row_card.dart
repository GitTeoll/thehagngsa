// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:thehangsa/model/event_model.dart';

class RowEventCard extends StatelessWidget {
  final String img;
  final String eventname;
  final int price;

  const RowEventCard({
    Key? key, // Add Key? key parameter
    required this.img,
    required this.eventname,
    required this.price,
  }) : super(key: key); // Add constructor body and super call

  factory RowEventCard.fromModel({required EventModel model}) {
    return RowEventCard(
      img: model.imgUrl,
      eventname: model.title,
      price: model.price,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 76,
                    height: 76,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(img), fit: BoxFit.cover),
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  eventname,
                                  style: const TextStyle(
                                      color: Color(0xFF1F1F21),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  '$price',
                                  style: const TextStyle(
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
                children: [Icon(Icons.arrow_forward_ios_rounded)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
