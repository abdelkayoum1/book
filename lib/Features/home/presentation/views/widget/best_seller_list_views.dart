import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

class ListTileBest extends StatefulWidget {
  const ListTileBest({super.key});

  @override
  State<ListTileBest> createState() => _ListTileBestState();
}

class _ListTileBestState extends State<ListTileBest> {
  bool isisvisible = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .30,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  margin: EdgeInsets.all(5),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of FireHarry Potter and the GobletGoblet',
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
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Text('${4.8} ', style: Styles.textStyle18),
                        Text(
                          ' ${(2390)}',
                          style: TextStyle(color: Colors.grey.withValues()),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
