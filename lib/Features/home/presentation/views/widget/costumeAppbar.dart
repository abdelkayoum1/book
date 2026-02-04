import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.logo, height: 20),
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 32)),
      ],
    );
  }
}
