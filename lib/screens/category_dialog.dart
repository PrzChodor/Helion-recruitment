import 'package:flutter/material.dart';
import 'package:helion/data/models/category.dart';

class CategoryDialog extends StatelessWidget {
  CategoryDialog({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(category.name),
      content: Text('ID: ${category.id}\n\nIlość książek: ${category.books}'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        )
      ],
    );
  }
}
