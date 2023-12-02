import 'dart:convert';
Food foodFromJson(String str) => Food.fromJson(json.decode(str));

String foodToJson(Food data) => json.encode(data.toJson());

class Food {
  final int id;
  final int price;
  final String title;
  final double rating;
  final String description;
  final String image;
  final int reviews;
  final bool isFavourite;

  Food({
    required this.id,
    required this.price,
    required this.title,
    required this.rating,
    required this.description,
    required this.image,
    required this.reviews,
    required this.isFavourite,
  });

  Food copyWith({
    int? id,
    int? price,
    String? title,
    double? rating,
    String? description,
    String? image,
    int? reviews,
    bool? isFavourite,
  }) =>
      Food(
        id: id ?? this.id,
        price: price ?? this.price,
        title: title ?? this.title,
        rating: rating ?? this.rating,
        description: description ?? this.description,
        image: image ?? this.image,
        reviews: reviews ?? this.reviews,
        isFavourite: isFavourite ?? this.isFavourite,
      );

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: json["id"],
    price: json["price"],
    title: json["title"],
    rating: json["rating"]?.toDouble(),
    description: json["description"],
    image: json["image"],
    reviews: json["reviews"],
    isFavourite: json["is_favourite"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "title": title,
    "rating": rating,
    "description": description,
    "image": image,
    "reviews": reviews,
    "is_favourite": isFavourite,
  };
}
