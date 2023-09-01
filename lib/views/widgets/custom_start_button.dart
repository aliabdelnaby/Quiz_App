import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/views/quiz_page.dart';

import '../../constants.dart';

class CustomStartButton extends StatelessWidget {
  const CustomStartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const QuizPage()),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: kPrimaryGradient,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          "Start Quiz",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
