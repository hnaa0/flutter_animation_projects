import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animation_final_project/items.dart';

class CoverCard extends StatelessWidget {
  const CoverCard({
    super.key,
    required this.index,
    required this.isDetail,
  });

  final int index;
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: 600.ms,
      width: isDetail ? size.width * 0.55 : size.width * 0.6,
      height: isDetail ? size.width * 0.55 : size.width * 0.6,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(0, 1),
            blurRadius: 7,
            spreadRadius: isDetail ? 5 : 2,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(items[index].imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
