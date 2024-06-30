import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_ui/data/category_data.dart';
import 'package:zomato_clone_ui/models/category_model.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    int midpoint = (categories.length / 2).ceil();

    List<Category> firstHalf = categories.sublist(0, midpoint);
    List<Category> secondHalf = categories.sublist(midpoint);
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: midpoint,
        itemBuilder: (context, index) {
          Category category1 = firstHalf[index];
          Category category2 = secondHalf[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                padding: const EdgeInsets.all(8),
                height: 120,
                width: 120,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl: category1.image,
                    ),
                    Positioned(
                      bottom: -1,
                      child: Text(category1.name),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                padding: const EdgeInsets.all(8),
                height: 120,
                width: 120,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl: category2.image,
                    ),
                    Positioned(
                      bottom: -5,
                      child: Text(category2.name),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
