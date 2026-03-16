import 'package:book/Features/home/domaine/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookEntities> fetchfeaturebooks();

  List<BookEntities> fetchfeaturebestnewset();
}

class Homelocaldatasourceimpl extends HomeLocalDataSource {
  @override
  List<BookEntities> fetchfeaturebestnewset() {
    // TODO: implement fetchfeaturebestnewset
    throw UnimplementedError();
  }

  @override
  List<BookEntities> fetchfeaturebooks() {
    // TODO: implement fetchfeaturebooks
    throw UnimplementedError();
  }
}
