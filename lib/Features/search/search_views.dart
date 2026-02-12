import 'package:book/Features/search/presentation/views/widjet/search_views_app_bar_book.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatefulWidget {
  const SearchViews({super.key});

  @override
  State<SearchViews> createState() => _SearchViewsState();
}

class _SearchViewsState extends State<SearchViews> {
  @override
  /*
  void initState() {
    print('object');
    BlocProvider.of<SearchCubitCubit>(context).searchbook(value: );
    super.initState();
  }
  */
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SearchViewsAppBarBook()));
  }
}
