import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> _favoriteMeals;

  FavoritesScreen(this._favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  void _removeMeal(String mealId) {
    setState(() {
      widget._favoriteMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget._favoriteMeals.isEmpty ? Center(
      child: Text('You have no favorites yet - start adding some!'),
    ) : ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: widget._favoriteMeals[index].id,
            title: widget._favoriteMeals[index].title,
            imageUrl: widget._favoriteMeals[index].imageUrl,
            affordability: widget._favoriteMeals[index].affordability,
            complexity: widget._favoriteMeals[index].complexity,
            duration: widget._favoriteMeals[index].duration,
            removeItem: _removeMeal,
          );
        },
        itemCount: widget._favoriteMeals.length,
      );
  }
}
