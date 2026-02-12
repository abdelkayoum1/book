import 'package:book/Features/home/presentation/manager/feature_newset_book_cubit/feature_newset_book_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/best_seller_list_views.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasetsallerListViews extends StatelessWidget {
  const BasetsallerListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureNewsetBookCubit, FeatureNewsetBookState>(
      builder: (context, state) {
        if (state is FeatureNewsetBooksucces) {
          return ListView.builder(
            // shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: BestsallerListItem(books: state.books[index]),
              );
            },
          );
        } else if (state is FeatureNewsetBookfailure) {
          return Center(child: Text(state.errormessage));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
