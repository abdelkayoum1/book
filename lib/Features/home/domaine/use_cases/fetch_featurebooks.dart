import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/Features/home/domaine/repos/home_repos.dart';
import 'package:book/core/error/failure.dart';
import 'package:book/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturebooks extends UseCase<List<BookEntities>, Noparam> {
  final HomeRepose homerepose;

  FetchFeaturebooks({required this.homerepose});

  @override
  Future<Either<Failure, List<BookEntities>>> call([Noparam? param]) async {
    return await homerepose.fetchfeaturebooks();
  }
}
