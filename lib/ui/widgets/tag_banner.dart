import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagBanner extends StatelessWidget {
  final String text;

  const TagBanner({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double fontSize = isMobile ? 18 : 22;
    final double verticalPadding = isMobile ? 12 : 24;
    final double horizontalPadding = isMobile ? 8 : 24;
    final double borderRadius = isMobile ? 8 : 12;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF232327).withOpacity(0.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding / 2,
            horizontal: horizontalPadding * 2 / 3,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
              letterSpacing: 2,
              color: Colors.white70,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
