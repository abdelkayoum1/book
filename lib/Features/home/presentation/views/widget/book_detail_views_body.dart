import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widget/book_actions.dart';
import 'package:book/Features/home/presentation/views/widget/bookdetailviewsAppbar.dart';
import 'package:book/Features/home/presentation/views/widget/booklistviewsdetail__like.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:book/constant_images.dart';
import 'package:book/core/utile/style.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailViewsBody extends StatelessWidget {
  const BookDetailViewsBody({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 15,
                  ),
                  child: BookdetailviewsAppbar(),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .35),

                  child: CusomterDetailListViewsImage(
                    image: books.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
                SizedBox(height: 43),
                Text(
                  books.volumeInfo.title ?? '',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle14,
                ),

                Text(
                  books.volumeInfo.authors?.first ?? '',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
                    SizedBox(width: 6.3),
                    Text('${4.8} ', style: Styles.textStyle16),

                    SizedBox(height: 5),
                    Text(
                      ' (2390)',
                      style: Styles.textStyle14.copyWith(
                        color: Color(0xff707070),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                BookActions(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('You can also like'),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: BookListViewsdetail__like(books: books),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
