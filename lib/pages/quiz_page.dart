import "package:flutter/material.dart";

import "../utils/questions.dart";
import "../utils/quiz.dart";
import "../UI/answer_button.dart";
import "../UI/question_text.dart";
import "../UI/correct_wrong_overlay.dart";

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("the answer is true", true),
    new Question("the answer is false", false),
    new Question("the answer is false", false),
    new Question("the answer is true", true),
  ]);

  String questionText;
  int questionNumber;
  bool isCorect;

  bool showOverlay = false;

  @override
  void initState() {
    super.initState();

    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          // main page
          children: <Widget>[
            new AnswerButton(true, () => print("true")),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(
                false,
                () => setState(() {
                      showOverlay = true;
                    }))
          ],
        ),
        showOverlay ? new CorrectWrongOverlay(true) : new Container()
      ],
    );
  }
}
