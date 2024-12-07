import 'package:bloc/bloc.dart';
import '../../data/repo/category_video_repo.dart';
import 'category_video_state.dart';

class CategoryVideoCubit extends Cubit<CategoryVideoState> {
  final CategoryVideoRepo _categoryVideoRepo;
  CategoryVideoCubit(this._categoryVideoRepo) : super(const CategoryVideoState.initial());

  void emitCategoryVideoStates() async {
    emit(const CategoryVideoState.loading());
    final response = await _categoryVideoRepo.getCategoryVideo();
    response.when(success: (dataList) {
      emit(CategoryVideoState.success(dataList));
    }, failure: (error) {
      emit(CategoryVideoState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
