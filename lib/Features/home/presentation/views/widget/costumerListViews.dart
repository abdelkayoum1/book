import 'package:book/constant_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CusomterDetailListViewsImage extends StatefulWidget {
  const CusomterDetailListViewsImage({super.key, required this.image});
  final String image;

  @override
  State<CusomterDetailListViewsImage> createState() =>
      _CusomterDetailListViewsImageState();
}

class _CusomterDetailListViewsImageState
    extends State<CusomterDetailListViewsImage> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: widget.image,
          fit: BoxFit.fill,
          placeholder: (context, url) => Text('error'),
          errorWidget: (context, error, tree) => Icon(Icons.error),
        ),
        // إذا فشلت الصورة
      ),
    );
  }
}
