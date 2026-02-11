part of 'similaire_cubit_detail_cubit.dart';

sealed class SimilaireCubitDetailState extends Equatable {
  const SimilaireCubitDetailState();

  @override
  List<Object> get props => [];
}

final class SimilaireCubitDetailInitial extends SimilaireCubitDetailState {}

final class Similairedetailloading extends SimilaireCubitDetailState {}

final class SimilairedetailSucces extends SimilaireCubitDetailState {
  final List<BookModel> books;

  const SimilairedetailSucces(this.books);
}

final class SimilairedetailFailure extends SimilaireCubitDetailState {
  final String errormessage;

  const SimilairedetailFailure(this.errormessage);
}
