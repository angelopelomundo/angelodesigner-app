import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoHeaderMobile extends StatefulWidget {
  const VideoHeaderMobile({super.key});

  @override
  State<VideoHeaderMobile> createState() => _VideoHeaderMobileState();
}

class _VideoHeaderMobileState extends State<VideoHeaderMobile> {
  late VideoPlayerController _controller;

  static const double bottomPaddingPercent = 0.10;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/bg_video.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double getBottomPosition(double videoHeight) {
    return videoHeight * bottomPaddingPercent;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final videoHeight = screenWidth < 600 ? 180.0 : 260.0;
    final fontSize = screenWidth < 600 ? 32.0 : 50.0;
    final verticalPadding = screenWidth < 600 ? 8.0 : 12.0;
    final horizontalPadding = screenWidth < 600 ? 16.0 : 28.0;

    return Stack(
      children: [
        _controller.value.isInitialized
            ? SizedBox(
                height: videoHeight,
                width: double.infinity,
                child: VideoPlayer(_controller),
              )
            : Container(
                height: videoHeight,
                color: Colors.black26,
                child: const Center(child: CircularProgressIndicator()),
              ),
        Positioned(
          bottom: getBottomPosition(videoHeight),
          left: 16.0,
          right: 16.0,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: horizontalPadding,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF27292C).withOpacity(0.6),
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                'angelo designer',
                style: GoogleFonts.montserrat(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 5,
                  color: const Color(0xFFFFD700),
                  decoration: TextDecoration.none,
                  shadows: const [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black54,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
