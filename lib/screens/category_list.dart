import 'package:flutter/material.dart';
import 'package:helion/data/models/category.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            var category = categories[index];
            return CategoryItem(
              category: category,
              hasSubcategories: category.children != null,
            );
          }),
    );
  }
}
