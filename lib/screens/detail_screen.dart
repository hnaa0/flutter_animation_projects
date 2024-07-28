import 'package:flutter/material.dart';
import 'package:flutter_animation_final_project/items.dart';
import 'package:flutter_animation_final_project/widgets/available_icon.dart';
import 'package:flutter_animation_final_project/widgets/cover_card.dart';
import 'package:flutter_animation_final_project/widgets/detail_desc.dart';
import 'package:gap/gap.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.index,
    required this.controller,
  });

  final int index;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          const Gap(120),
          CoverCard(
            index: index,
            isDetail: true,
          ),
          const Gap(20),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[index].title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(24),
                Text(
                  "EA app for Windows / EA app and Origin for Mac",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
                const Gap(6),
                Text(
                  "₩ ${items[index].detail["price"]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(4),
                const AvailableIcon(),
                const Gap(28),
                Divider(
                  color: Colors.white.withOpacity(0.5),
                ),
                const Gap(28),
                DetailDesc(
                  item: items[index],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
