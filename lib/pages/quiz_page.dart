import "package:flutter/material.dart";

import "../utils/questions.dart";
import "../utils/quiz.dart";
import "../UI/answer_button.dart";

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          // main page
          children: <Widget>[
            new AnswerButton(true),
            new AnswerButton(false),
          ],
        )
      ],
    );
  }
}
