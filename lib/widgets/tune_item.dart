import 'package:flutter/material.dart';
import 'package:tunes_app/models/item_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.item,
  });
  final TuneModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: item.playSound,
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
