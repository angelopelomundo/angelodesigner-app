import 'package:flutter/material.dart';
import '../widgets/tag_banner.dart';
import '../widgets/app_text_block.dart';
import '../widgets/subtitle_section.dart';
import '../widgets/contato_section.dart';
import '../widgets/common/video_header.dart';
import '../widgets/common/carousel_apps.dart';
import '../widgets/common/carousel_artes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.8,
            colors: [
              Color(0xFF0D001A), // roxo quase preto, muito escuro e sutil
              Colors.black, // preto nas bordas
            ],
            stops: [0.25, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VideoHeader(),
                const SizedBox(height: 48),
                const TagBanner(text: 'alguns de nossos apps exclusivos'),
                const SizedBox(height: 48),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    child: const CarouselApps(),
                  ),
                ),
                const SizedBox(height: 96),
                const AppTextBlock(
                  text:
                      'Estamos sempre buscando as melhores ferramentas e técnicas para garantir que nossos designs sejam modernos, funcionais e visualmente atraentes. Acreditamos que um bom design não é apenas sobre estética, mas também sobre criar experiências significativas e intuitivas para nossos clientes e amigos.',
                ),
                const SizedBox(height: 96),
                const SubtitleSection(text: 'arte digital'),
                const SizedBox(height: 48),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    child: const CarouselArtes(),
                  ),
                ),
                const SizedBox(height: 96),
                const AppTextBlock(
                  text:
                      "A aplicação da Arte Digital com auxílio de IA se torna fundamental nos dias de hoje, aprimorando a estética e levando novas inspirações pelo mundo.",
                  rightAlign: true,
                ),
                const SizedBox(height: 96),
                const ContatoSection(),
                const SizedBox(height: 96),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
