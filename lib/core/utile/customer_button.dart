import 'package:book/core/utile/style.dart';

import 'package:flutter/material.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton({
    super.key,
    required this.border,
    required this.color,
    required this.textcolor,
    required this.title,
    this.onPressed,
  });
  final Color color, textcolor;
  final BorderRadius border;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: onPressed,
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
  }
}
