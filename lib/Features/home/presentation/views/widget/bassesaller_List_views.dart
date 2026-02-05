import 'package:book/Features/home/presentation/views/widget/best_seller_list_views.dart';
import 'package:flutter/material.dart';

class BasetsallerListViews extends StatelessWidget {
  const BasetsallerListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: BestsallerListItem(),
        );
      },
    );
  }
}
