import 'package:flutter/material.dart';

import 'pages/categories_page.dart';
import 'pages/category_meals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Meal',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoriesPage(),
        '/meals': (context) => CategoryMealsPage(),
      },
    );
  }
}
