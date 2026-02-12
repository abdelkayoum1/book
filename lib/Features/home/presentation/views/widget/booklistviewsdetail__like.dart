import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/presentation/manager/similaire_cubit_detail/similaire_cubit_detail_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/costumerListViews.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListViewsdetail__like extends StatelessWidget {
  const BookListViewsdetail__like({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilaireCubitDetailCubit, SimilaireCubitDetailState>(
      builder: (context, state) {
        if (state is SimilairedetailSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            // height: 100,
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 7,
                  ),
                  child: CusomterDetailListViewsImage(
                    image:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilairedetailFailure) {
          return Text(state.errormessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
