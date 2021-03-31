import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../models/category.dart';

import 'package:daily_meals/dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Daily Meal'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(25),
          children: DUMMY_CATEGORIES.map(
            (Category category) {
              return CategoryItem(
                category: category,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}