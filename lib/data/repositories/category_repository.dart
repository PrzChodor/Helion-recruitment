import 'dart:convert';
import 'dart:io';

import 'package:enough_convert/enough_convert.dart';
import 'package:helion/data/models/category.dart';
import 'package:http/http.dart' as http;

class CategoryRepository {
  Future<List<Category>> getCategories() async {
    final response = await http
        .get(Uri.parse('https://helion.pl/rest.helion.pl/categories'))
        .timeout(Duration(seconds: 30),
            onTimeout: () => throw HttpException('Request timed out'));

    if (response.statusCode != 200) {
      throw HttpException(response.body.toString());
    }

    final codec = const Latin2Codec(allowInvalid: false);
    final decoded = codec.decode([...response.bodyBytes]);

    var jsonResponse = jsonDecode(decoded);

    return List<Category>.from(jsonResponse['categories']
        .map((category) => Category.fromJson(category)));
  }
}
