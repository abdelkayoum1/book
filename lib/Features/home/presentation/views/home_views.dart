import 'package:book/Features/home/presentation/views/widget/Home_views_body.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewsBody());
  }
}
