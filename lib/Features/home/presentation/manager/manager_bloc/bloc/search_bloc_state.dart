part of 'search_bloc_bloc.dart';

sealed class SearchBlocState extends Equatable {
  const SearchBlocState();

  @override
  List<Object> get props => [];
}

final class SearchBlocInitial extends SearchBlocState {}

final class SearchSuccesbloc extends SearchBlocState {
  final List<BookModel> books;

  const SearchSuccesbloc(this.books);
}

final class SearchFailurebloc extends SearchBlocState {
  final String errormessage;

  const SearchFailurebloc(this.errormessage);
}

final class SearchLoadingbloc extends SearchBlocState {}
