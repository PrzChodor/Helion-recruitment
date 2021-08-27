import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helion/cubit/category_item/category_item_cubit.dart';
import 'package:helion/data/models/category.dart';
import 'package:helion/screens/subcategory_item.dart';

import 'category_dialog.dart';

class CategoryItem extends StatefulWidget {
  CategoryItem(
      {Key? key, required this.category, this.hasSubcategories = false})
      : super(key: key);

  final Category category;
  final bool hasSubcategories;

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => CategoryItemCubit(),
      child: BlocBuilder<CategoryItemCubit, bool>(
        builder: (context, state) {
          return Card(
            child: InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) =>
                      CategoryDialog(category: widget.category)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        widget.hasSubcategories
                            ? InkWell(
                                borderRadius: BorderRadius.circular(8),
                                child: state
                                    ? Icon(Icons.expand_less)
                                    : Icon(Icons.expand_more),
                                onTap: () => context
                                    .read<CategoryItemCubit>()
                                    .changeState(),
                              )
                            : SizedBox(
                                width: 24,
                                height: 24,
                              ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          widget.category.name.toString(),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    widget.hasSubcategories
                        ? Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            height: state ? null : 0,
                            child: Column(
                              children: [
                                for (var subcategory
                                    in widget.category.children!)
                                  SubcategoryItem(subcategory: subcategory)
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
