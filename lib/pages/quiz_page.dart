import "package:flutter/material.dart";

import "../utils/questions.dart";
import "../utils/quiz.dart";

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
            new Material(
              color: Colors.greenAccent,
              child: new InkWell(
                onTap: () => println("You answered true"),
                child: new Center(
                  child: new Container(
                    child: new Text("True"),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
