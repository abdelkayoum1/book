import 'package:book/Features/search/presentation/views/widjet/search_views_app_bar_book.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatelessWidget {
  const SearchViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SearchViewsAppBarBook()));
  }
}
