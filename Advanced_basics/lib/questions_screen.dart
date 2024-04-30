import 'package:flutter/material.dart';
import 'package:advanced_basics/answer_button.dart';
import 'package:advanced_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0; // start with first question

void answerQuestion(String selectedAnswer) {
  // you can do like this: currentQuestionIndex  = currentQuestionIndex + 1;
  widget.onSelectAnswer(selectedAnswer);
  setState(() { //update state and call build
    currentQuestionIndex ++; 
  });
}
  // we add also a method for when we clock on button

  @override
  Widget build(context) {
    final currentQuestion  = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, // take all available space
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,  style: GoogleFonts.lato(
              color: const Color.fromARGB(143, 225, 165, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) { 
              return AnswerButton(
                answerText: answer, 
                onTap: () {answerQuestion(answer); } );
              })
          ]
        )
      )
   );
  }

}