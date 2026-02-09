import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'feature_newset_book_state.dart';

class FeatureNewsetBookCubit extends Cubit<FeatureNewsetBookState> {
  FeatureNewsetBookCubit(this.homerepo) : super(FeatureNewsetBookInitial());

  final HomeRepos homerepo;

  Future<void> Feature_newset_book() async {
    emit(FeatureNewsetBookloading());
    var resultat = await homerepo.fetcheNewestBooks();

    resultat.fold(
      (failure) {
        emit(FeatureNewsetBookfailure(failure.error.toString()));
      },
      (books) {
        emit(FeatureNewsetBooksucces(books));
      },
    );
  }
}
