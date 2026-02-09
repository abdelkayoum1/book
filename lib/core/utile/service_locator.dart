import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/core/utile/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final Getit = GetIt.instance;

void Setup() {
  Getit.registerSingleton<HomeReposImpl>(HomeReposImpl(ApiService(dio: Dio())));
}
