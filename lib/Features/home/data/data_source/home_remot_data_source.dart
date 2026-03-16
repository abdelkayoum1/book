import 'package:book/Features/home/domaine/entities/book_entities.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntities>> fetchfeaturebooks();

  Future<List<BookEntities>> fetchfeaturebestnewset();
}

class Homeremotdatasource extends HomeRemotDataSource {
  @override
  Future<List<BookEntities>> fetchfeaturebestnewset() {
    // TODO: implement fetchfeaturebestnewset
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntities>> fetchfeaturebooks() {
    // TODO: implement fetchfeaturebooks
    throw UnimplementedError();
  }
}
