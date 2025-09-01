import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextBlock extends StatelessWidget {
  final String text;
  final bool rightAlign;

  const AppTextBlock({super.key, required this.text, this.rightAlign = false});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double fontSize = isMobile ? 18 : 22;
    final double paddingHorizontal = isMobile ? 16 : 24;
    final double paddingVertical = isMobile ? 12 : 16;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300,
            fontSize: fontSize,
            color: Colors.white70,
            decoration: TextDecoration.none,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
