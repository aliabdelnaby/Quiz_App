import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import '../../constants.dart';
import '../../models/questions.dart';
import 'custom_options.dart';

class QuestionsCard extends StatelessWidget {
  const QuestionsCard({
    super.key,
    required this.question,
  });
  final Question question;
  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: const Color.fromARGB(4, 108, 119, 101),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 201, 197, 197),
            ),
          ),
          const SizedBox(height: 10),
          ...List.generate(
            question.options.length,
            (index) => CustomOptions(
              text: question.options[index],
              index: index,
              press: () => controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
