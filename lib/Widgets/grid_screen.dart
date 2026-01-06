import 'package:flutter/material.dart';
import 'grid_items.dart';
import '../data/grid_data.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        itemCount: gridData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.57,               //(AspectRatio = width / height)
        ),
        itemBuilder: (context, index) {
          final item = gridData[index];
          return GridItem(
            image: item['image']!,
            title: item['title']!,
            subtitle: item['subtitle']!,
          );
        },
      ),
    );
  }
}
