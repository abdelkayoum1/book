import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

class CusomterListViewsImage extends StatelessWidget {
  const CusomterListViewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.logoo),
          ),
        ),
      ),
    );
  }
}
