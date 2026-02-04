import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:flutter/material.dart';

class FeatureBookListViews extends StatelessWidget {
  const FeatureBookListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
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
