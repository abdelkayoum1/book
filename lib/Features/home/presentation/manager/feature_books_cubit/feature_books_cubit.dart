import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:book/Features/home/domaine/entities/book_entities.dart';
import 'package:book/Features/home/domaine/use_cases/fetch_featurebooks.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.fetchfeaturebooks) : super(FeatureBooksInitial());

  final FetchFeaturebooks fetchfeaturebooks;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var resultat = await fetchfeaturebooks.call();

    resultat.fold(
      (failure) {
        print("${failure.error}");
        emit(FeatureBooksFailure(failure.error.toString()));
      },
      (books) {
        print('${books.length}');
        emit(FeatureBooksSucces(books));
      },
    );
  }
}
