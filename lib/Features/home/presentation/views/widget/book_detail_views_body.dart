import 'package:book/Features/home/presentation/views/widget/bookdetailviewsAppbar.dart';
import 'package:book/Features/home/utile/style.dart';
import 'package:book/constant_images.dart';
import 'package:flutter/material.dart';

class BookDetailViewsBody extends StatelessWidget {
  const BookDetailViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: BookdetailviewsAppbar(),
          ),
          /*
              SizedBox(
                height: 200,
                child: AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(Assets.logoo),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              */
          Image.asset(
            Assets.logoo,
            height: MediaQuery.of(context).size.height * .35,
          ),
        ],
      ),
    );
  }
}
