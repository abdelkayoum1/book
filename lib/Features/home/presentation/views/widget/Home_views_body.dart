import 'package:book/Features/home/presentation/views/widget/Feature_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/best_seller_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/costumeAppbar.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant.dart';
import 'package:book/constant_images.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerAppBar(),
          FeatureBookListViews(),
          SizedBox(height: 40),
          Text('Best Saller', style: Styles.textStyle20),
          SizedBox(height: 10),
          Expanded(child: ListTileBest()),
        ],
      ),
    );
  }
}
