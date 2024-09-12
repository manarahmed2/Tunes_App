import 'package:flutter/material.dart';

class CategoryContainerItem extends StatelessWidget {
  const CategoryContainerItem(
      {super.key, required this.onTap, required this.color});
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
      ),
    );
  }
}
