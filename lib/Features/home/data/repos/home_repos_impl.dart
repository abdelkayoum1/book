import 'package:book/Features/core/error/failure.dart';
import 'package:book/Features/core/utile/api_service.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepos {
  final ApiService apiserver;

  HomeReposImpl(this.apiserver);
  @override
  Future<Either<Failure, List<BookModel>>> fetcheNewestBooks() async {
    try {
      var data = await apiserver.get(url: 'volumes?q=subject:Programming');
      List<BookModel> list = [];
      for (var item in data['items']) {
        list.add(BookModel.fromJson(item));
      }
      return Right(list);
    } on Exception catch (e) {
      return Left(FailureServer());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetcheBestSellerBooks
    throw UnimplementedError();
  }
}
