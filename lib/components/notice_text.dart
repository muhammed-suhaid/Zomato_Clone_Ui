import 'package:flutter/material.dart';

class NoticeText extends StatelessWidget {
  const NoticeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
