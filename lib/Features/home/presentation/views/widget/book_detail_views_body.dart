import 'package:book/Features/home/presentation/views/widget/Feature_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/bookdetailviewsAppbar.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailViewsBody extends StatelessWidget {
  const BookDetailViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: BookdetailviewsAppbar(),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .40),
            child: CusomterListViewsImage(),
          ),
          SizedBox(height: 43),
          Text('The Jungle Book', style: Styles.textStyle14),

          Text(
            'Rudyard Kipling',
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
                style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
