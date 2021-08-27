import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helion/data/models/category.dart';
import 'package:helion/data/repositories/category_repository.dart';
import 'package:meta/meta.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(Loading());

  Future<void> loadCategories() async {
    try {
      emit(Successful(await CategoryRepository().getCategories()));
    } catch (e) {
      emit(Failed());
    }
  }
}
