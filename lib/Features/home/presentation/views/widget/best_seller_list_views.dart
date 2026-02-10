import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/core/utile/app_route.dart';
import 'package:book/core/utile/style.dart';
import 'package:book/constant.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestsallerListItem extends StatelessWidget {
  BestsallerListItem({super.key, required this.books});
  final BookModel books;
  bool isisvisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kbookdetailhomeviews);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .20,
            // height: 100,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Image.network(
                books.volumeInfo.imageLinks!.thumbnail.toString(),
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  //  height: MediaQuery.of(context).size.height,
                  child: Text(
                    books.volumeInfo.title.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),

                /*
                
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isisvisible = !isisvisible;
                    });
                  },
                  child: isisvisible
                      ? Text(
                          'less More',
                          style: isisvisible
                              ? TextStyle(color: Colors.red)
                              : null,
                        )
                      : Text(
                          'Show More',
                          style: isisvisible
                              ? null
                              : TextStyle(color: Colors.greenAccent),
                        ),
                ),
                */
                Text(
                  books.volumeInfo.authors?.first ?? 'unknow',
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      'FREE',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
                        SizedBox(width: 6.3),
                        Text(
                          (books.volumeInfo.averageRating.toString()),
                          style: Styles.textStyle16,
                        ),

                        SizedBox(width: 5),
                        Text(
                          books.volumeInfo.ratingsCount.toString(),
                          style: Styles.textStyle14.copyWith(
                            color: Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
