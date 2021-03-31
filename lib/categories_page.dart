import 'package:flutter/material.dart';

import 'category_item.dart';
import 'models/category.dart';

import 'package:daily_meals/dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      padding: const EdgeInsets.all(20),
      children: DUMMY_CATEGORIES
          .map(
            (Category category) => CategoryItem(category: category),
          )
          .toList(),
    );
  }
}
