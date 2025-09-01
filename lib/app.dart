import 'package:flutter/material.dart';
import 'config/themes.dart';
import 'ui/pages/home_page.dart';

class AngeloDesignerApp extends StatelessWidget {
  const AngeloDesignerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angelo Designer',
      theme: darkThemeData,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
