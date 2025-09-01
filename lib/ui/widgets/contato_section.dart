import 'package:flutter/material.dart';
import '../../utils/launcher.dart';
import '../shared/gradient_button.dart';

class ContatoSection extends StatelessWidget {
  const ContatoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double paddingVertical = isMobile ? 16 : 24;
    final double paddingHorizontal = isMobile ? 20 : 32;
    final double borderRadius = isMobile ? 8 : 12;
    final double fontSize = isMobile ? 20 : 24;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: paddingHorizontal,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1F2124).withOpacity(0.5), // 30% transparente
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical,
          horizontal: paddingHorizontal,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contato',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: fontSize,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 12 : 16),
            GradientButton(
              text: 'angelofel@hotmail.com',
              onPressed: () => launchEmail('angelofel@hotmail.com'),
            ),
          ],
        ),
      ),
    );
  }
}
