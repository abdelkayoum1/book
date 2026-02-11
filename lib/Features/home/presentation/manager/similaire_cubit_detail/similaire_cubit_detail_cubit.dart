import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/model/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'similaire_cubit_detail_state.dart';

class SimilaireCubitDetailCubit extends Cubit<SimilaireCubitDetailState> {
  SimilaireCubitDetailCubit(this.homerepo)
    : super(SimilaireCubitDetailInitial());

  final HomeRepos homerepo;

  Future<void> fetchsimilairedetail({required String category}) async {
    emit(Similairedetailloading());
    var resultat = await homerepo.similairefetchdetail(category: category);

    resultat.fold(
      (failure) {
        print("${failure.error}");
        emit(SimilairedetailFailure(failure.error.toString()));
      },
      (books) {
        print('${books.length}');
        emit(SimilairedetailSucces(books));
      },
    );
  }
}
