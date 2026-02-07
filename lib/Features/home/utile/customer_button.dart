import 'package:book/Features/home/utile/style.dart';

import 'package:flutter/material.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton({
    super.key,
    required this.border,
    required this.color,
    required this.textcolor,
    required this.title,
  });
  final Color color, textcolor;
  final BorderRadius border;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(color: textcolor),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,

          shape: RoundedRectangleBorder(borderRadius: (border)),
        ),
      ),
    );
    /*
        TextButton(
          onPressed: () {},
          child: Text(
            'Free',
            style: Styles.textStyle18.copyWith(color: Colors.black),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        );
      */
  }
}
