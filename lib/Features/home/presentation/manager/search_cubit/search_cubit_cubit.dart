import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.homerepo) : super(SearchCubitInitial());
  final HomeRepos homerepo;
  Future<void> searchbook({required String value}) async {
    emit(SearchLoading());
    var resultat = await homerepo.searchbook(value: value);

    resultat.fold(
      (failure) {
        print("${failure.error}");
        emit(SearchFailure(failure.error.toString()));
      },
      (books) {
        print('${books.length}');
        emit(SearchSucces(books));
      },
    );
  }
}
