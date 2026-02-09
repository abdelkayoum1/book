import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homerepo) : super(FeatureBooksInitial());

  final HomeRepos homerepo;

  Future<void> fetchFeatureBook() async {
    emit(FeatureBooksLoading());
    var resultat = await homerepo.fetchFeatureBooks();

    resultat.fold(
      (failure) {
        emit(FeatureBooksFailure(failure.error.toString()));
      },
      (books) {
        emit(FeatureBooksSucces(books));
      },
    );
  }
}
