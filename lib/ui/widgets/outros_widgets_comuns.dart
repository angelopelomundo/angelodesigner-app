import 'package:flutter/material.dart';

/// Carrossel grande para snapshots (vertical, 9:16)
class LargeSnapshotCarousel extends StatelessWidget {
  final Widget carousel;
  const LargeSnapshotCarousel({super.key, required this.carousel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(height: 600, child: carousel),
    );
  }
}

/// Carrossel médio para artes (vertical, proporção ~0.7)
class MediumArtCarousel extends StatelessWidget {
  final Widget carousel;
  const MediumArtCarousel({super.key, required this.carousel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(height: 400, child: carousel),
    );
  }
}

/// Contêiner retangular para texto com bordas arredondadas
class TextBlockContainer extends StatelessWidget {
  final String text;
  final double widthFactor; // proporção da tela
  final TextAlign align;
  final EdgeInsetsGeometry padding;
  const TextBlockContainer({
    super.key,
    required this.text,
    this.widthFactor = 0.9,
    this.align = TextAlign.left,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * widthFactor;
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.09),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Text(
          text,
          textAlign: align,
          style: const TextStyle(
            fontSize: 18,
            height: 1.4,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

/// Contêiner para título com bordas arredondadas
class TitleBlockContainer extends StatelessWidget {
  final String title;
  final double widthFactor;
  final EdgeInsetsGeometry padding;
  final TextAlign align;
  const TitleBlockContainer({
    super.key,
    required this.title,
    this.widthFactor = 0.9,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    this.align = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * widthFactor;
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.deepPurple.withOpacity(0.8),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurpleAccent.withOpacity(0.7),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          title,
          textAlign: align,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}

/// Contêiner de vídeo grande com título retangular arredondado (imagem substitui vídeo)
class LargeVideoContainer extends StatelessWidget {
  final String title;
  final Widget videoChild; // pode ser vídeo ou imagem placeholder
  const LargeVideoContainer({
    super.key,
    required this.title,
    required this.videoChild,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.9;
    final double height = width * 9 / 16;

    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade900.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurpleAccent.withOpacity(0.6),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.1,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(width: width, height: height, child: videoChild),
          ),
        ],
      ),
    );
  }
}
