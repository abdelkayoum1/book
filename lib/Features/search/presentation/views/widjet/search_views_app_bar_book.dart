import 'package:book/Features/search/presentation/views/widjet/costomersearchviewstext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
