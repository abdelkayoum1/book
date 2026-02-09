part of 'feature_newset_book_cubit.dart';

sealed class FeatureNewsetBookState extends Equatable {
  const FeatureNewsetBookState();

  @override
  List<Object> get props => [];
}

final class FeatureNewsetBookInitial extends FeatureNewsetBookState {}

final class FeatureNewsetBookloading extends FeatureNewsetBookState {}

final class FeatureNewsetBooksucces extends FeatureNewsetBookState {
  final List<BookModel> books;

  const FeatureNewsetBooksucces(this.books);
}

final class FeatureNewsetBookfailure extends FeatureNewsetBookState {
  final String errormessage;

  const FeatureNewsetBookfailure(this.errormessage);
}
