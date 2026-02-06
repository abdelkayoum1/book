import 'package:book/Features/home/presentation/views/home_views.dart';
import 'package:book/Features/home/presentation/views/widget/book_detail_views_body.dart';
import 'package:book/Splash/splash_views.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const kbookdetailhomeviews = '/bookdetailviewsbody';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashViews()),

      GoRoute(path: '/home_views', builder: (context, state) => HomeViews()),
      GoRoute(
        path: kbookdetailhomeviews,
        builder: (context, state) => BookDetailViewsBody(),
      ),
    ],
  );
}
