import 'package:flutter/material.dart';
import 'package:flutter_animation_final_project/items.dart';
import 'package:gap/gap.dart';

class DetailDesc extends StatelessWidget {
  const DetailDesc({
    super.key,
    required this.item,
  });

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.desc,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          const Gap(30),
          for (var i = 0; i < item.detail["subTitle"].length; i++) ...[
            Text(
              item.detail["subTitle"][i],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    item.detail["subImages"][i],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(0, 1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
            const Gap(14),
            Text(
              item.detail["subDesc"][i],
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
              ),
            ),
            const Gap(34),
          ],
          const Gap(100),
        ],
      ),
    );
  }
}
