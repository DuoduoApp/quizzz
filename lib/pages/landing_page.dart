import "package:flutter/material.dart";

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.amber,
        child: new InkWell(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Lets Quizzz"),
              new Text("Tap to Start!")
            ],
          ),
        ));
  }
}
