import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../mobile/video_header_mobile.dart';
import '../web/video_header_web.dart';

class VideoHeader extends StatelessWidget {
  const VideoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return kIsWeb ? const VideoHeaderWeb() : const VideoHeaderMobile();
  }
}
