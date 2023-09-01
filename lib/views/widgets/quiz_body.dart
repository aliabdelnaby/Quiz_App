
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/question_controller.dart';
import 'progress_bar.dart';
import 'questions_card.dart';

class QuizBody extends StatelessWidget {

   const QuizBody({
    super.key,
    required QuestionController questionController,
  }) : _questionController = questionController;

  final QuestionController _questionController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ProgressBar(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Obx(
              () =>  Text.rich(
                TextSpan(
                  text: "Question ${_questionController.questionNumber}",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryColor,
                  ),
                  children:  [
                    TextSpan(
                      text: '/${_questionController.questions.length}',
                      style: const TextStyle(
                        color: kSecondaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(thickness: 1.5),
          const SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
              controller: _questionController.pageController,
              itemCount: _questionController.questions.length,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: _questionController.updateTheQnNum,
              itemBuilder: (context, index) => QuestionsCard(
                question: _questionController.questions[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
