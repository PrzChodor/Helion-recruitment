import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helion/cubit/categories/categories_cubit.dart';
import 'package:helion/screens/category_list.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helion'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => CategoriesCubit()..loadCategories(),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state) {
            return state.when(
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              successful: (categories) => CategoryList(categories: categories),
              failed: () => Center(
                child: Text('Nie można połączyć się z serwerem!'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
