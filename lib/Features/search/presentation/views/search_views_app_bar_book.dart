import 'package:flutter/material.dart';

class SearchViewsAppBarBook extends StatelessWidget {
  const SearchViewsAppBarBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: 'search_book',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
