import 'package:hive_flutter/adapters.dart';
part 'book_entities.g.dart';

@HiveType(typeId: 0)
class BookEntities {
  @HiveField(0)
  final String bookid;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? title;
  @HiveField(3)
  final String? auteur;
  @HiveField(4)
  final num? rating;
  @HiveField(5)
  final num? price;

  BookEntities({
    required this.bookid,
    required this.image,
    required this.title,
    required this.auteur,
    required this.rating,
    required this.price,
  });
}
