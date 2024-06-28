import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_ui/data/image_data.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: offers,
          imageBuilder: (context, imageProvider) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              width: width / 3.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
        CachedNetworkImage(
          imageUrl: awards,
          imageBuilder: (context, imageProvider) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              width: width / 3.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
        CachedNetworkImage(
          imageUrl: foodOnTrain,
          imageBuilder: (context, imageProvider) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              width: width / 3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fitHeight,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
