import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feature_newset_book_state.dart';

class FeatureNewsetBookCubit extends Cubit<FeatureNewsetBookState> {
  FeatureNewsetBookCubit() : super(FeatureNewsetBookInitial());
}
