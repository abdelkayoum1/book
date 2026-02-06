import 'package:book/Features/home/presentation/views/widget/Feature_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/bookdetailviewsAppbar.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
