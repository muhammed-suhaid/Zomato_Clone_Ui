import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zomato_clone_ui/components/categroy_tab.dart';
import 'package:zomato_clone_ui/components/explore_tab.dart';
import 'package:zomato_clone_ui/components/filter_tab.dart';
import 'package:zomato_clone_ui/components/food_card.dart';
import 'package:zomato_clone_ui/components/my_appbar.dart';
import 'package:zomato_clone_ui/components/my_divider.dart';
import 'package:zomato_clone_ui/components/notice_text.dart';
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
                  const NoticeText(),
                  const SizedBox(height: 20),
                  CachedNetworkImage(imageUrl: banner),
                  const SizedBox(height: 20),
                  const MyDivider(text: 'EXPLORE'),
                  const SizedBox(height: 20),
                  const ExploreTab(),
                  const SizedBox(height: 30),
                  const MyDivider(text: 'WHAT\'S ON YOUR MIND'),
                  const SizedBox(height: 30),
                  const CategoryTab(),
                  const SizedBox(height: 30),
                  const MyDivider(text: 'ALL RESTAURANTS'),
                  const SizedBox(height: 30),
                  const FilterTab(),
                  const FoodCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
