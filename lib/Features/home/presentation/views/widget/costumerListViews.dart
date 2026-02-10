import 'package:book/constant_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CusomterListViewsImage extends StatelessWidget {
  const CusomterListViewsImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          fit: BoxFit.fill,
          imageUrl,
          errorBuilder: (context, treeerror, error) => Icon(Icons.error),
          // إذا فشلت الصورة
        ),
      ),
    );
  }
}
