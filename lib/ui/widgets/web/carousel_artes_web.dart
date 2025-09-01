import 'dart:async';
import 'package:flutter/material.dart';

class CarouselArtesWeb extends StatefulWidget {
  const CarouselArtesWeb({super.key});

  @override
  State<CarouselArtesWeb> createState() => _CarouselArtesWebState();
}

class _CarouselArtesWebState extends State<CarouselArtesWeb> {
  late PageController _controller;
  int currentPage = 0;
  Timer? _timer;
  final double viewportFraction = 0.7;

  final List<String> imagePaths = List.generate(
    6,
    (i) => 'assets/artes/heading-img-${(i + 1).toString().padLeft(2, '0')}.jpg',
  );

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: viewportFraction);
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_controller.hasClients) {
        if (currentPage < imagePaths.length - 1) {
          currentPage++;
        } else {
          currentPage = 0;
        }
        _controller.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 450),
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
    final double maxWidth = MediaQuery.of(context).size.width;
    final double itemWidth = maxWidth * viewportFraction;
    final double aspectRatio = 0.7;
    final double height = itemWidth / aspectRatio;
    final double horizontalPadding = 14;
    final double borderRadius = 28;

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
