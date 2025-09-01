import 'dart:async';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'ui/widgets/web/video_element_registry.dart';
import 'app.dart';

void waitAndRegisterVideoElement() {
  const interval = Duration(milliseconds: 50);
  Timer.periodic(interval, (timer) {
    try {
      registerVideoElement();
      timer.cancel();
    } catch (_) {
      // Se ainda não estiver definido, aguarda próxima tentativa
    }
  });
}

void main() {
  if (kIsWeb) {
    waitAndRegisterVideoElement();
  }
  runApp(const AngeloDesignerApp());
}
