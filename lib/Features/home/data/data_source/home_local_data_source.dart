import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/core/utile/api_service.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntities> fetchfeaturebooks();

  List<BookEntities> fetchfeaturebestnewset();
}

class Homelocaldatasourceimpl extends HomeLocalDataSource {
  final ApiService apiservice;

  Homelocaldatasourceimpl({required this.apiservice});

  @override
  List<BookEntities> fetchfeaturebestnewset() {
    var book = Hive.box<BookEntities>('book_entities');
    return book.values.toList();
  }

  @override
  List<BookEntities> fetchfeaturebooks() {
    var book = Hive.box<BookEntities>('bookçentities');
    return book.values.toList();
  }
}
