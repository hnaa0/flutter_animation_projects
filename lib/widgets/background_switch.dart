import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animation_final_project/items.dart';

class BackgroundSwitch extends StatelessWidget {
  const BackgroundSwitch({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: 600.milliseconds,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        key: ValueKey(currentPage),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 3,
            sigmaY: 3,
          ),
          child: Image.asset(
            items[currentPage].bgUrl,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.colorBurn,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
