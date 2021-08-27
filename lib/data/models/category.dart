import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  final String name;
  final int id;
  final books;
  final List<Category>? children;

  Category(
      {required this.name,
      required this.id,
      required this.books,
      this.children});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
