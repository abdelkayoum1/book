import 'package:book/Features/core/error/failure.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl extends HomeRepos {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetcheBestSellerBooks() {
    // TODO: implement fetcheBestSellerBooks
    throw UnimplementedError();
  }
}
