import 'package:book/Features/home/presentation/views/widget/Feature_list_views.dart';
import 'package:book/Features/home/presentation/views/widget/costumeAppbar.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant_images.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerAppBar(),
          FeatureBookListViews(),
          SizedBox(height: 40),
          Text('Best Saller', style: Style.text),
          ListTileBest(),
        ],
      ),
    );
  }
}

class ListTileBest extends StatelessWidget {
  const ListTileBest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .20,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(Assets.logoo),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text('jkebjkrvjkerjk'),
            Text('data'),
            Text('J.K Rowling'),
            Row(children: [Text('${19.99}'), Text('${4.8}')]),
          ],
        ),
      ],
    );
  }
}
