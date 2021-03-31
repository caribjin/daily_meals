import 'package:flutter/material.dart';

import 'models/category.dart';

class CategoryMealsPage extends StatefulWidget {
  // late final Category? category;
  // CategoryMealsPage(this.category);

  @override
  _CategoryMealsPageState createState() => _CategoryMealsPageState();
}

class _CategoryMealsPageState extends State<CategoryMealsPage> {
  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context)?.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: Container(
        child: Center(
          child: Text(
            'The recipes form the category: ${category.title}',
          ),
        ),
      ),
    );
  }
}
