part of 'search_bloc_bloc.dart';

sealed class SearchBlocEvent extends Equatable {
  const SearchBlocEvent();

  @override
  List<Object> get props => [];
}

class Searchbook extends SearchBlocEvent {
  final String value;

  const Searchbook({required this.value});
}
