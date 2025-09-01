import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'video_element_registry.dart'; // Import condicional correto
// Para HtmlElementView

class VideoHeaderWeb extends StatefulWidget {
  const VideoHeaderWeb({super.key});

  @override
  State<VideoHeaderWeb> createState() => _VideoHeaderWebState();
}

class _VideoHeaderWebState extends State<VideoHeaderWeb> {
  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      registerVideoElement();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: HtmlElementView(viewType: 'video-html'),
    );
  }
}
