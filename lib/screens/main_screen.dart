import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animation_final_project/screens/detail_screen.dart';
import 'package:flutter_animation_final_project/widgets/background_switch.dart';
import 'package:flutter_animation_final_project/widgets/desc_card_page_view.dart';
import 'package:gap/gap.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  final PageController _descController = PageController(viewportFraction: 0.8);
  late final size = MediaQuery.of(context).size;
  late final AnimationController _menuController = AnimationController(
    vsync: this,
    duration: 1.seconds,
  );
  late final AnimationController _slideController = AnimationController(
    vsync: this,
    duration: 600.ms,
    upperBound: size.height + 100,
  );
  final ScrollController _detailScrollController = ScrollController();

  final Curve _menuCurve = Curves.decelerate;

  late final Animation<double> _screenScale = Tween(
    begin: 1.0,
    end: 0.8,
  ).animate(
    CurvedAnimation(
      parent: _menuController,
      curve: Interval(
        0.0,
        0.3,
        curve: _menuCurve,
      ),
    ),
  );

  late final Animation<Offset> _screenOffset = Tween(
    begin: Offset.zero,
    end: const Offset(0.5, 0),
  ).animate(
    CurvedAnimation(
      parent: _menuController,
      curve: Interval(
        0.2,
        0.4,
        curve: _menuCurve,
      ),
    ),
  );

  late final Animation<double> _closeButtonOpacity =
      Tween(begin: 0.0, end: 1.0).animate(
    CurvedAnimation(
      parent: _menuController,
      curve: const Interval(
        0.3,
        0.4,
        curve: Curves.easeInCubic,
      ),
    ),
  );

  late final Animation<double> _logoOpacity = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: _menuController,
      curve: const Interval(
        0.3,
        0.5,
        curve: Curves.easeInCubic,
      ),
    ),
  );

  late final List<Animation<Offset>> _menuAnimations = [
    for (var i = 0; i < _menus.length; i++)
      Tween<Offset>(
        begin: const Offset(-1.5, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _menuController,
          curve: Interval(
            0.4 + (0.1 * 1),
            0.7 + (0.1 * i),
          ),
        ),
      ),
  ];

  int _currentPage = 0;
  double _dragDirection = 0.0;
  bool _isDetail = false;

  void _onPageChange(int newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }

  void _openMenu() {
    _menuController.forward();
  }

  void _closeMenu() {
    _menuController.reverse();
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    _slideController.value += details.delta.dy;

    setState(() {
      _dragDirection = details.delta.dy;
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    final lowerBound = size.height - 700;
    final upperBound = size.height - 200;
    final dropZone = size.height * 0.8;

    if (_dragDirection > 0) {
      if (_slideController.value >= lowerBound) {
        _slideController.animateTo(
          dropZone,
          curve: Curves.easeInOut,
        );
        setState(() {
          _isDetail = true;
        });
      } else {
        _slideController.animateTo(
          0,
          curve: Curves.easeInOut,
        );
      }
    } else {
      if (_slideController.value <= upperBound) {
        _slideController
            .animateTo(
          0,
          curve: Curves.easeInOut,
        )
            .then((value) {
          _detailScrollController.jumpTo(0);
        });
        setState(() {
          _isDetail = false;
        });
      } else {
        _slideController.animateTo(
          dropZone,
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _slideController.dispose();
    _descController.dispose();
    _menuController.dispose();
    super.dispose();
  }

  final _menus = [
    "all",
    "Expansion Packs",
    "Game packs",
    "Stuff packs",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: FadeTransition(
              opacity: _closeButtonOpacity,
              child: IconButton(
                onPressed: _closeMenu,
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                FadeTransition(
                  opacity: _logoOpacity,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: 160,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo/sims4-blue.png",
                    ),
                  ),
                ),
                const Gap(40),
                for (var i = 0; i < _menus.length; i++) ...[
                  SlideTransition(
                    position: _menuAnimations[i],
                    child: Text(
                      _menus[i].toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xff1500B3),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(10),
                ],
              ],
            ),
          ),
        ),
        SlideTransition(
          position: _screenOffset,
          child: ScaleTransition(
            scale: _screenScale,
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  AnimatedOpacity(
                    duration: 300.ms,
                    opacity: _isDetail ? 0 : 1,
                    child: IconButton(
                      onPressed: _isDetail ? null : _openMenu,
                      icon: const Icon(
                        Icons.menu,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
                scrolledUnderElevation: 0,
              ),
              extendBodyBehindAppBar: true,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: BackgroundSwitch(
                      currentPage: _currentPage,
                    ),
                  ),
                  AnimatedOpacity(
                    duration: 300.ms,
                    opacity: _isDetail ? 1 : 0,
                    child: DetailScreen(
                      index: _currentPage,
                      controller: _detailScrollController,
                    ),
                  ),
                  AnimatedBuilder(
                    animation: _slideController,
                    builder: (context, child) {
                      return GestureDetector(
                        onVerticalDragUpdate: _onVerticalDragUpdate,
                        onVerticalDragEnd: _onVerticalDragEnd,
                        child: Transform.translate(
                          offset: Offset(0, _slideController.value),
                          child: DescCardPageView(
                            onPageChanged: _onPageChange,
                            controller: _descController,
                            currentPage: _currentPage,
                            isDetail: _isDetail,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
