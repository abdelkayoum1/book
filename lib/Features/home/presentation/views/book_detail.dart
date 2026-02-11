import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/Features/home/presentation/manager/similaire_cubit_detail/similaire_cubit_detail_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/book_detail_views_body.dart';
import 'package:book/core/utile/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({super.key, required this.books});
  final BookModel books;
  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  void initState() {
    print('suuces');
    BlocProvider.of<SimilaireCubitDetailCubit>(
      context,
    ).fetchsimilairedetail(category: widget.books.volumeInfo.categories![0]);

    //.fetchsimilairedetail(category: widget.books.volumeInfo.categories!.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BookDetailViewsBody(books: widget.books);
  }
}
