import 'package:flutter/material.dart';
import 'package:tunes_app/models/item_model.dart';

class CategoryContainerItem extends StatelessWidget {
  const CategoryContainerItem({
    super.key,
    required this.item,
  });
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.playSound,
      child: Container(
        color: item.color,
      ),
    );
  }
}
