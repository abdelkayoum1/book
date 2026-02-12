import 'package:flutter/material.dart';

void snackbar(context, String urll) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text('not found $urll')));
}
