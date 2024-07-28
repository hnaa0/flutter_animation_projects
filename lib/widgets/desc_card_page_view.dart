import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animation_final_project/items.dart';
import 'package:flutter_animation_final_project/widgets/cover_card.dart';
import 'package:gap/gap.dart';

class DescCardPageView extends StatefulWidget {
  const DescCardPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
    required this.currentPage,
    required this.isDetail,
  });

  final PageController controller;
  final Function onPageChanged;
  final int currentPage;
  final bool isDetail;

  @override
  State<DescCardPageView> createState() => _DescPageViewState();
}

class _DescPageViewState extends State<DescCardPageView>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: 300.ms,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: PageView.builder(
        controller: widget.controller,
        scrollDirection: Axis.horizontal,
        physics: widget.isDetail ? const NeverScrollableScrollPhysics() : null,
        onPageChanged: (value) => widget.onPageChanged(value),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 20,
                    child: AnimatedScale(
                      duration: 300.milliseconds,
                      scale: widget.currentPage == index ? 1 : 0.85,
                      child: AnimatedOpacity(
                        duration: 300.milliseconds,
                        opacity: widget.currentPage == index ? 1 : 0.6,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          width: size.width * 0.8,
                          height: size.height * 0.65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 26,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      item.title.toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const Gap(12),
                                    SizedBox(
                                      height: 180,
                                      child: Text(
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        item.desc,
                                        style: const TextStyle(
                                          height: 1.6,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width * 0.85,
                                height: 72,
                                color: const Color(0xff1500B3),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Add to cart",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Gap(8),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    child: AnimatedScale(
                      duration: 300.milliseconds,
                      scale: widget.currentPage == index ? 1 : 0.85,
                      child: Hero(
                        tag: "$index",
                        child: CoverCard(
                          index: index,
                          isDetail: false,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
