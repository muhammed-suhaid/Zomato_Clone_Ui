import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zomato_clone_ui/components/my_appbar.dart';
import 'package:zomato_clone_ui/data/image_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.cloudy_snowing,
                          size: 35,
                        ),
                        SizedBox(width: 8),
                        Expanded(
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
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('E X P L O R E'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
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
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
