import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/views/welcome_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
