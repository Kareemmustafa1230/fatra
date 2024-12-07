import 'package:bloc/bloc.dart';
import '../../data/repo/categorya_articles_repo.dart';
import 'category_articles_state.dart';

class CategoryArticlesCubit extends Cubit<CategoryArticlesState> {
  final CategoryArticlesRepo _categoryArticlesRepo;
  CategoryArticlesCubit(this._categoryArticlesRepo) : super(const CategoryArticlesState.initial());

  void emitCategoryArticlesStates() async {
    emit(const CategoryArticlesState.loading());
    final response = await _categoryArticlesRepo.getCategoryArticles();
    response.when(success: (dataList) {
      emit(CategoryArticlesState.success(dataList));
    }, failure: (error) {
      emit(CategoryArticlesState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
