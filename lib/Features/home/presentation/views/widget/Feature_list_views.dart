import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:book/Features/home/presentation/views/book_detail.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';
import 'package:book/core/utile/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class FeatureBookListViews extends StatefulWidget {
  const FeatureBookListViews({super.key});

  @override
  State<FeatureBookListViews> createState() => _FeatureBookListViewsState();
}

class _FeatureBookListViewsState extends State<FeatureBookListViews> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: CusomterListViewsImage(
                    imageUrl: state
                        .books[index]
                        .volumeInfo
                        .imageLinks!
                        .thumbnail
                        .toString(),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return Text(state.errormessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Shimmere(),
                );
              },
            ),
          );
        }
      },
    );
  }
}
