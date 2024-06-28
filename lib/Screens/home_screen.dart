import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_ui/components/explore_tab.dart';
import 'package:zomato_clone_ui/components/my_appbar.dart';
import 'package:zomato_clone_ui/components/my_divider.dart';
import 'package:zomato_clone_ui/data/image_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const MyAppbar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.cloudy_snowing,
                          color: Colors.blue.withOpacity(0.7),
                          size: 35,
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'It\'s slippery outside! Delivery partners may drive slower during rains.',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  CachedNetworkImage(imageUrl: banner),
                  const SizedBox(height: 20),
                  const MyDivider(text: 'EXPLORE'),
                  const SizedBox(height: 20),
                  const ExploreTab(),
                  const SizedBox(height: 30),
                  const MyDivider(text: 'WHAT\'S ON YOUR MIND'),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
