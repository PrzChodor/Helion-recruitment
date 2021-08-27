part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.successful(List<Category> categories) =
      Successful;
  const factory CategoriesState.failed() = Failed;
}
