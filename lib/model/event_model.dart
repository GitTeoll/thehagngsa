import 'dart:convert';

class EventModel {
  final String title;
  final String imgUrl;
  final int price;
  const EventModel({
    required this.title,
    required this.imgUrl,
    required this.price,
  });

  EventModel copyWith({
    String? title,
    String? imgUrl,
    int? price,
  }) {
    return EventModel(
      title: title ?? this.title,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'imgUrl': imgUrl,
      'price': price,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      title: map['title'] as String,
      imgUrl: map['imgUrl'] as String,
      price: map['price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'EventModel(title: $title, imgUrl: $imgUrl, price: $price)';

  @override
  bool operator ==(covariant EventModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.imgUrl == imgUrl &&
        other.price == price;
  }

  @override
  int get hashCode => title.hashCode ^ imgUrl.hashCode ^ price.hashCode;
}
