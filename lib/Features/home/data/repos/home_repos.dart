import 'package:book/core/error/failure.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos {
  Future<Either<Failure, List<BookModel>>> fetcheNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
