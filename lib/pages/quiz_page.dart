import "package:flutter/material.dart";

import "../utils/questions.dart";
import "../utils/quiz.dart";
import "../UI/answer_button.dart";
import "../UI/question_text.dart";
import "../UI/correct_wrong_overlay.dart";
import "score_page.dart";

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
  bool isCorrect;

  bool showOverlay = false;

  @override
  void initState() {
    super.initState();

    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      showOverlay = true;
    });
  }

  void handleOverlay() {
    if (quiz.length == questionNumber) {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) =>
              new ScorePage(quiz.score, quiz.length)));
      return;
    }

    currentQuestion = quiz.nextQuestion;
    this.setState(() {
      showOverlay = false;
      questionText = currentQuestion.question;
      questionNumber = quiz.questionNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          // main page
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)), //true button
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => handleAnswer(false)) //false button
          ],
        ),
        showOverlay
            ? new CorrectWrongOverlay(isCorrect, () => handleOverlay())
            : new Container()
      ],
    );
  }
}
