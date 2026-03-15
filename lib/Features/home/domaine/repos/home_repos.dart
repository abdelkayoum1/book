import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepose {
  Future<Either<Failure, List<BookEntities>>> fetchfeaturebooks();

  Future<Either<Failure, List<BookEntities>>> fetchfeaturebestnewset();
}
