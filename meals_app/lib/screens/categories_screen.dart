import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ListView doesn't have no items side by side
    // GridView can have items side by side
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(
                  category.id,
                  category.title,
                  category.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // maxCrossAxisExtent decides how many items side by side on the screen (based on devices' screen size)
          maxCrossAxisExtent: 200,
          // childAspectRatio decides the height of item => (maxCrossAxisExtent * childAspectRatio)
          childAspectRatio: 3 / 2,
          // crossAxisSpacing, mainAxisSpacing decide spacing
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
