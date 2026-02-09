import 'package:book/Features/core/error/failure.dart';
import 'package:book/Features/core/utile/api_service.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepos {
  final ApiService apiService;

  HomeReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetcheNewestBooks() async {
    try {
      var data = await apiService.get(url: 'volumes?q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer.fromDioError(e));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }
}
