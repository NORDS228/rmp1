import 'package:flutter/material.dart';

import 'screens/practice_gallery_screen.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая работа №1',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF625BFA)),
        scaffoldBackgroundColor: const Color(0xFFF5F5F8),
      ),
      home: const PracticeGalleryScreen(),
    );
  }
}
