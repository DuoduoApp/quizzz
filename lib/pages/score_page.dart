import "package:flutter/material.dart";
import "quiz_page.dart";

class ScorePage extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Your score is: ",
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0)),
            new Text("2/5"),
            new IconButton(
                icon: new Icon(Icons.arrow_right),
                color: Colors.white,
                iconSize: 50.0,
                onPressed: () => print("[ S C O R E S ]")),
          ],
        ));
  }
}
