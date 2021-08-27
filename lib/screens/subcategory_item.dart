import 'package:flutter/material.dart';
import 'package:helion/data/models/category.dart';
import 'package:helion/screens/category_dialog.dart';

class SubcategoryItem extends StatelessWidget {
  SubcategoryItem({Key? key, required this.subcategory}) : super(key: key);

  final Category subcategory;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: Theme.of(context).primaryColor,
            child: InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => CategoryDialog(category: subcategory)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subcategory.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Theme.of(context).cardColor),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
