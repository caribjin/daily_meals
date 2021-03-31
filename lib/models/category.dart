import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({required this.id, required this.title, this.color = Colors.white});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};

    map["id"] = id;
    map["title"] = title;
    map["color"] = color;

    return map;
  }
}
