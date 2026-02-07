import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:flutter/material.dart';

class BookListViewsdetail__like extends StatelessWidget {
  const BookListViewsdetail__like({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CusomterListViewsImage(),
          );
        },
      ),
    );
  }
}
