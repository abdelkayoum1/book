import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_bloc_event.dart';
part 'search_bloc_state.dart';

class SearchBlocBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  final HomeRepos homerepos;
  SearchBlocBloc(this.homerepos) : super(SearchBlocInitial()) {
    on<Searchbook>((event, emit) async {
      emit(SearchLoadingbloc());
      var resultat = await homerepos.searchbook(value: event.value);

      resultat.fold(
        (failure) {
          print("${failure.error}");
          emit(SearchFailurebloc(failure.error.toString()));
        },
        (books) {
          print('${books.length}');
          emit(SearchSuccesbloc(books));
        },
      );
    });
  }
}
