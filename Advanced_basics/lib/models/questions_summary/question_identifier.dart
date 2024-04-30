// This class is made to build the logo icons of the final summary results screen

import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {  
  // class constructor
  const QuestionIdentifier({super.key, required this.isCorrectAnswer, required this.questionIndex,}); // the constructor here accptes two named arguments: if the answer is correct, and the number of the question

// here we store the accepted parameters that are a boolean value and an integer
final bool isCorrectAnswer;
final int questionIndex;

@override
Widget build(BuildContext context) {
  // we compute the question number that is the question index + 1, since we start from 0
  final questionNumber = questionIndex + 1;

  return Container(
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isCorrectAnswer
        ? const Color.fromARGB(255,150,198,241)
        : const Color.fromARGB(255, 249, 133, 241),
      borderRadius: BorderRadius.circular(100)
    ),
    child: Text(
      questionNumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 22, 2, 56)
      ),
    ),

  );
}

}