import 'package:book/Features/home/presentation/views/widget/Feature_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/bassesaller_List_views.dart';
import 'package:book/Features/home/presentation/views/widget/best_seller_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/costumeAppbar.dart';
import 'package:book/Features/core/utile/style.dart';

import 'package:flutter/material.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomerAppBar(),
              ),
              FeatureBookListViews(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('Best Saller', style: Styles.textStyle20),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: BasetsallerListViews(),
          ),
        ),
      ],
    );
  }
}
