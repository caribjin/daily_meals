enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String? imageUrl;
  final int? duration;
  final List<String>? ingredients;
  final List<String>? steps;
  final bool? isGlutenFree;
  final bool? isVegan;
  final bool? isVegetarian;
  final bool? isLactoseFree;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    this.affordability = Affordability.Affordable,
    this.complexity = Complexity.Simple,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });
}
