import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AvailableIcon extends StatelessWidget {
  const AvailableIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Available on",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const Gap(8),
        Image.asset(
          "assets/logo/windows.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
        const Gap(4),
        Image.asset(
          "assets/logo/apple.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
        const Gap(4),
        Image.asset(
          "assets/logo/steam.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
        const Gap(4),
        Image.asset(
          "assets/logo/xbox.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
        const Gap(4),
        Image.asset(
          "assets/logo/epic-games.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
        const Gap(4),
        Image.asset(
          "assets/logo/play-station.png",
          width: 16,
          colorBlendMode: BlendMode.srcIn,
          color: Colors.white,
        ),
      ],
    );
  }
}
