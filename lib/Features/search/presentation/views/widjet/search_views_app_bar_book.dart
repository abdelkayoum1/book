import 'package:book/Features/core/utile/app_route.dart';
import 'package:book/Features/search/presentation/views/widjet/costomersearchviewstext.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewsAppBarBook extends StatelessWidget {
  const SearchViewsAppBarBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Column(children: [CostomersearchviewsText()]),
    );
  }
}
