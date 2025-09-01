import 'package:flutter/foundation.dart' show kIsWeb;
import '../web/carousel_artes_web.dart';
import '../mobile/carousel_artes_mobile.dart';
import 'package:flutter/material.dart';

class CarouselArtes extends StatelessWidget {
  const CarouselArtes({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return const CarouselArtesWeb();
    } else {
      return const CarouselArtesMobile();
    }
  }
}
