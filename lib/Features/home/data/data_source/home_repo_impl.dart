import 'package:book/Features/home/data/data_source/home_local_data_source.dart';
import 'package:book/Features/home/data/data_source/home_remot_data_source.dart';
import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/Features/home/domaine/repos/home_repos.dart';
import 'package:book/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepose {
  final HomeRemotDataSource homeremotdatasource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeremotdatasource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntities>>> fetchfeaturebestnewset() async {
    try {
      List<BookEntities> books = homeLocalDataSource.fetchfeaturebooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      var resu = await homeremotdatasource.fetchfeaturebooks();
      return Right(resu);
    } catch (e) {
      return Left(FailureServer());
    }
  }

  @override
  Future<Either<Failure, List<BookEntities>>> fetchfeaturebooks() {
    // TODO: implement fetchfeaturebooks
    throw UnimplementedError();
  }
}
