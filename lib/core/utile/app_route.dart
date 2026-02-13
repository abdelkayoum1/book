import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/Features/home/presentation/manager/manager_bloc/bloc/search_bloc_bloc.dart';
import 'package:book/Features/home/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:book/Features/home/presentation/manager/similaire_cubit_detail/similaire_cubit_detail_cubit.dart';
import 'package:book/Features/home/presentation/views/book_detail.dart';
import 'package:book/Features/home/presentation/views/home_views.dart';

import 'package:book/Features/search/search_views.dart';
import 'package:book/Splash/splash_views.dart';
import 'package:book/core/utile/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const kbookdetail = '/bookdetail';
  static const ksearcgviewsappbarbook = '/searchviewsappbarbook';
  static const kbookdetailviews = '/bookdetailviews';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashViews()),

      GoRoute(path: '/home_views', builder: (context, state) => HomeViews()),
      GoRoute(
        path: kbookdetail,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilaireCubitDetailCubit(getit.get<HomeReposImpl>()),
          child: BookDetail(books: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: ksearcgviewsappbarbook,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBlocBloc(getit.get<HomeReposImpl>()),
          child: SearchViews(),
        ),
      ),
      /*
      GoRoute(
        path: kbookdetailviews,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilaireCubitDetailCubit(getit.get<HomeReposImpl>()),
          child: BookDetailViewsBody(books: state.extra as BookModel),
        ),
      ),
      */
    ],
  );
}
