import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
     Key ? key,
    required this.title,
    required this.press,
  }): super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: press,
          child: const Text("See all"),
        ),
      ],
    );
  }
}