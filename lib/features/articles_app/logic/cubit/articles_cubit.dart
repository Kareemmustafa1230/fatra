import 'package:bloc/bloc.dart';
import '../../data/repo/articles_repo.dart';
import 'articles_state.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  final ArticlesRepo _articlesRepo ;
  ArticlesCubit(this._articlesRepo) : super(const ArticlesState.initial());

  void emitArticlesStates(int id) async {
    emit(const ArticlesState.loading());
    final response = await _articlesRepo.getArticles(id);
    response.when(success: (dataList) {
      emit(ArticlesState.success(dataList));
    }, failure: (error) {
      emit(ArticlesState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
