import 'package:flutter/material.dart';
import 'package:zomato_clone_ui/data/filter_data.dart';

class FilterTab extends StatelessWidget {
  const FilterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: filterData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = filterData[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            child: Center(
              child: index == 0
                  ? Row(
                      children: [
                        Text(data),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    )
                  : Text(data),
            ),
          );
        },
      ),
    );
  }
}
