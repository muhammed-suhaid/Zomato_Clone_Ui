import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final String text;
  const MyDivider({
    super.key,
    required this.text,
  });

  String _addSpaces(String text) {
    return text.split('').join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            _addSpaces(text),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
