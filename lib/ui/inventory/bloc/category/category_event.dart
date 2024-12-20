part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.addCategory({
    required String name,
    required XFile image,
  }) = _AddCategory;

  const factory CategoryEvent.getCategories() = _GetCategories;

  //delete category
  const factory CategoryEvent.deleteCategory(int id) = _DeleteCategory;

  //update category
  const factory CategoryEvent.updateCategory({
    required int id,
    required String name,
    required XFile? image,
  }) = _UpdateCategory;
}