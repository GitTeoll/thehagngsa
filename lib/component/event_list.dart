import 'package:flutter/material.dart';
import 'package:thehangsa/const/event_data.dart';
import 'package:thehangsa/model/event_model.dart';
import 'package:thehangsa/widget/event_row_card.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: eventList
          .map((EventModel e) => RowEventCard.fromModel(model: e))
          .toList(),
    );
  }
}
