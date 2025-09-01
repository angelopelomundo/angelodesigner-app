import 'package:flutter/foundation.dart' show kIsWeb;
import '../web/carousel_apps_web.dart';
import '../mobile/carousel_apps_mobile.dart';
import 'package:flutter/material.dart';

class CarouselApps extends StatelessWidget {
  const CarouselApps({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return const CarouselAppsWeb();
    } else {
      return const CarouselAppsMobile();
    }
  }
}
