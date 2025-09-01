import 'package:js/js.dart';
import 'dart:html' as html;

@JS('window.flutter.platformViewRegistry')
external PlatformViewRegistry get platformViewRegistry;

@JS()
@anonymous
class PlatformViewRegistry {
  external void registerViewFactory(
      String viewTypeId, dynamic Function(int) viewFactory);
}

void registerVideoElement() {
  platformViewRegistry.registerViewFactory('video-html', (int viewId) {
    final video = html.VideoElement()
      ..src = 'assets/videos/bg_video.mp4'
      ..style.width = '100%'
      ..style.height = '100%'
      ..controls = true
      ..autoplay = true
      ..loop = true
      ..muted = true;
    return video;
  });
}
