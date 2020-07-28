import 'package:flutter/foundation.dart';

enum Language {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

enum Size {
  Small,
  Large,
}
class Book {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Size size;
  final Language language;
  final Affordability affordability;
 

  const Book({
    @required this.id,
    @required this.affordability,
    @required this.categories,
    @required this.imageUrl,
    @required this.size,
    @required this.language,
    @required this.title,
  });
}

