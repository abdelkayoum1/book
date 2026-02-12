import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/core/fonction/lunch_Url.dart';
import 'package:book/core/utile/customer_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: CustomerButton(
              title: 'Free',
              textcolor: Colors.black,
              color: Colors.white,
              border: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),

          Expanded(
            child: CustomerButton(
              onPressed: () async {
                geturl(context, books.volumeInfo.previewLink.toString());
              },
              title: getText(books),
              color: Colors.red,
              textcolor: Colors.white,
              border: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel books) {
    if (books.volumeInfo.previewLink == null) {
      return 'Not Disponible';
    } else {
      return 'Disponible';
    }
  }
}
