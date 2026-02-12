import 'package:book/core/error/failure.dart';
import 'package:book/core/utile/api_service.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepos {
  final ApiService apiService;

  HomeReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
        url: 'volumes?filter=free-ebooks&q=Programming',
        // url: 'volumes?q=programming',
        // url: 'volumes?filter=free-ebooks&q=computer science',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer.fromDioError(e));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetcheNewestBooks() async {
    try {
      // var data = await apiService.get(url: 'volumes?q=subject:Programming');
      var data = await apiService.get(
        url: 'volumes?filter=free-ebooks&q=Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print('error');
          books.add(BookModel.fromJson(item));
        }
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer.fromDioError(e));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> similairefetchdetail({
    required String category,
  }) async {
    try {
      // var data = await apiService.get(url: 'volumes?q=subject:Programming');
      var data = await apiService.get(
        url: 'volumes?filter=free-ebooks&sorting=relevance&q=Flutter',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          print(item);
          print(data['item']);
          books.add(BookModel.fromJson(item));
        } catch (e) {}
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer.fromDioError(e));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> searchbook({
    required String value,
  }) async {
    try {
      // var data = await apiService.get(url: 'volumes?q=subject:Programming');
      var data = await apiService.get(
        url: 'volumes?filter=free-ebooks&sorting=relevance&q=$value',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {}
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
