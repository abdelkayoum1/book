import 'package:book/Features/home/utile/app_route.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestsallerListItem extends StatefulWidget {
  const BestsallerListItem({super.key});

  @override
  State<BestsallerListItem> createState() => _ListTileBestState();
}

class _ListTileBestState extends State<BestsallerListItem> {
  bool isisvisible = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kbookdetailhomeviews);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .20,
            // height: 100,
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
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  //  height: MediaQuery.of(context).size.height,
                  child: Text(
                    'Harry Potter and the Goblet of FireHarry Potter and the GobletGobletobletGobletobletGobletobletGobletvvvobletGobletobletGobletobletGobletobletGobletobletGobletobletGobletobletGobletobletGobletobletGoblet',
                    maxLines: isisvisible ? null : 2,
                    overflow: isisvisible
                        ? TextOverflow.visible
                        : TextOverflow.ellipsis,

                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isisvisible = !isisvisible;
                    });
                  },
                  child: isisvisible
                      ? Text(
                          'less More',
                          style: isisvisible
                              ? TextStyle(color: Colors.red)
                              : null,
                        )
                      : Text(
                          'Show More',
                          style: isisvisible
                              ? null
                              : TextStyle(color: Colors.greenAccent),
                        ),
                ),

                Text('J.K Rowling', style: Styles.textStyle14),
                Row(
                  children: [
                    Text(
                      '${19.99}',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
                        SizedBox(width: 6.3),
                        Text('${4.8} ', style: Styles.textStyle16),

                        //SizedBox(width: 5),
                        Text(
                          ' (2390)',
                          style: Styles.textStyle14.copyWith(
                            color: Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
