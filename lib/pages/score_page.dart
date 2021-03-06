import "package:flutter/material.dart";
import "quiz_page.dart";
import "landing_page.dart";

class ScorePage extends StatelessWidget {
  final int _score;
  final int _totalQuestions;

  ScorePage(this._score, this._totalQuestions);

  void handleTap(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(
          builder: (BuildContext context) => new LandingPage(),
        ),
        (Route route) => route == null);
  }

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
            new Text(_score.toString() + " / " + _totalQuestions.toString()),
            new IconButton(
                icon: new Icon(Icons.arrow_right),
                color: Colors.white,
                iconSize: 150.0,
                onPressed: () => handleTap(context))
          ],
        ));
  }
}
