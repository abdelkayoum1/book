import 'package:flutter/material.dart';

class BookdetailviewsAppbar extends StatelessWidget {
  const BookdetailviewsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
