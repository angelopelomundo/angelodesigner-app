import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtitleSection extends StatelessWidget {
  final String text;

  const SubtitleSection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double fontSize = isMobile ? 26 : 35;
    final double paddingVertical = isMobile ? 12 : 16;
    final double paddingHorizontal = isMobile ? 16 : 24;
    final double borderRadius = isMobile ? 8 : 12;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: paddingHorizontal,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF232327).withOpacity(0.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: const EdgeInsets.all(16),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
            letterSpacing: 4,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
