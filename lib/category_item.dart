import 'package:flutter/material.dart';

import 'models/category.dart';

class CategoryItem extends StatelessWidget {
  late final Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: category.color,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        gradient: RadialGradient(
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
          center: Alignment.topLeft,
          radius: 1.5,
          colors: [
            category.color.withOpacity(0.6),
            category.color,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          category.title,
          style: const TextStyle(
            color: Colors.white,
            shadows: [
              Shadow(
                color: Color.fromRGBO(0, 0, 0, 0.8),
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
