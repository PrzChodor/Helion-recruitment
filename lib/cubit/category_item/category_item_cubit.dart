import 'package:bloc/bloc.dart';

class CategoryItemCubit extends Cubit<bool> {
  CategoryItemCubit() : super(false);

  void changeState() {
    emit(!state);
  }
}
