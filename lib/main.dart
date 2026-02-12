import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:book/Features/home/presentation/manager/feature_newset_book_cubit/feature_newset_book_cubit.dart';

import 'package:book/core/utile/app_route.dart';
import 'package:book/constant.dart';
import 'package:book/core/utile/service_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cubit = FeatureBooksCubit(getit.get<HomeReposImpl>());
            cubit.fetchFeatureBooks();
            return cubit;
          },
        ),
        BlocProvider(
          create: (context) {
            final cubit = FeatureNewsetBookCubit(getit.get<HomeReposImpl>());
            cubit.Feature_newset_book();
            return cubit;
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: colors,

          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ), //add font family
        ),

        // home: SplashViews(),
      ),
    );
  }
}
