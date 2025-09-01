import 'dart:async';
import 'package:flutter/material.dart';

class CarouselAppsMobile extends StatefulWidget {
  const CarouselAppsMobile({super.key});

  @override
  State<CarouselAppsMobile> createState() => _CarouselAppsMobileState();
}

class _CarouselAppsMobileState extends State<CarouselAppsMobile> {
  late PageController _controller;
  int currentPage = 0;
  Timer? _timer;
  final double viewportFraction = 0.85;

  final List<String> imagePaths = List.generate(
    15,
    (i) =>
        'assets/screenshots/snapshot-${(i + 1).toString().padLeft(2, '0')}.png',
  );

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: viewportFraction);
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_controller.hasClients) {
        if (currentPage < imagePaths.length - 1) {
          currentPage++;
        } else {
          currentPage = 0;
        }
        _controller.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = 9 / 16;
    final double height = 600;
    final double horizontalPadding = 12;
    final double borderRadius = 24;

    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: _controller,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: AspectRatio(
                aspectRatio: aspectRatio,
                child: Image.asset(imagePaths[index], fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
