import 'package:book/Features/home/presentation/views/widget/costumeAppbar.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          CustomerAppBar(),
          // Expanded(child: CusomterListViewsImage()),
          FeatureBookListViews(),
        ],
      ),
    );
  }
}

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
          return CusomterListViewsImage();
        },
      ),
    );
  }
}
