import 'package:book/Features/home/presentation/manager/manager_bloc/bloc/search_bloc_bloc.dart';
import 'package:book/Features/home/presentation/manager/search_cubit/search_cubit_cubit.dart';

import 'package:book/Features/home/presentation/views/widget/best_seller_list_views.dart';
import 'package:book/Features/search/presentation/views/widjet/costomersearchviewstext.dart';
import 'package:book/core/utile/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewsAppBarBook extends StatelessWidget {
  const SearchViewsAppBarBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostomersearchviewsText(),
          SizedBox(height: 6),
          Text('resultat', style: Styles.textStyle16),
          Expanded(
            child: BlocBuilder<SearchBlocBloc, SearchBlocState>(
              builder: (context, state) {
                if (state is SearchSuccesbloc) {
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
                } else if (state is SearchFailurebloc) {
                  return Text(state.errormessage);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*
class SearchviewsListViews extends StatelessWidget {
  const SearchviewsListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        // shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // padding: EdgeInsets.zero,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: BasetsallerListViews(),
          );
        },
      ),
    );
  }
}
*/
