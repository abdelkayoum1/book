part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksSucces extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksSucces({required this.books});
}

final class FeatureBooksFailure extends FeatureBooksState {
  final String errormessage;

  const FeatureBooksFailure({required this.errormessage});
}
