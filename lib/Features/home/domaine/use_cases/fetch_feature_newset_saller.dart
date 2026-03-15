import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/Features/home/domaine/repos/home_repos.dart';
import 'package:book/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureNewsetSaller
    extends Usecasesnawset<List<BookEntities>, Noparam> {
  final HomeRepose homerepose;

  FetchFeatureNewsetSaller({required this.homerepose});

  @override
  Future<Either<Failure, List<BookEntities>>> call([Noparam? param]) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

abstract class Usecasesnawset<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class Noparam {}
