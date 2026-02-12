part of 'search_cubit_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchSucces extends SearchCubitState {
  final List<BookModel> books;

  const SearchSucces(this.books);
}

final class SearchFailure extends SearchCubitState {
  final String errormessage;

  const SearchFailure(this.errormessage);
}

final class SearchLoading extends SearchCubitState {}
