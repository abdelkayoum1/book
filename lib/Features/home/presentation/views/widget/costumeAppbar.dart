import 'package:book/Features/core/utile/app_route.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.logo, height: 20),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoute.ksearcgviewsappbarbook);
            },
            icon: Icon(Icons.search, size: 32),
          ),
        ],
      ),
    );
  }
}
