class BookEntities {
  final String bookid;
  final String? image, title, auteur;
  final num? rating;
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
