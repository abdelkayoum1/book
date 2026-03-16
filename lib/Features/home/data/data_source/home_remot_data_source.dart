import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/core/utile/api_service.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntities>> fetchfeaturebooks();

  Future<List<BookEntities>> fetchfeaturebestnewset();
}

class Homeremotdatasourceimpl extends HomeRemotDataSource {
  final ApiService apiservice;

  Homeremotdatasourceimpl(this.apiservice);
  @override
  // Future<List<BookEntities>>
  fetchfeaturebestnewset() async {
    var resu = await apiservice.get(
      url: 'volumes?filter=free-ebooks&q=Programming',
    );
    List<BookEntities> list = [];
    for (var booksentities in resu['items']) {
      list.add(BookModel.fromJson(booksentities));
      print(booksentities);
    }
    return list;
  }

  @override
  Future<List<BookEntities>> fetchfeaturebooks() {
    // TODO: implement fetchfeaturebooks
    throw UnimplementedError();
  }
}
