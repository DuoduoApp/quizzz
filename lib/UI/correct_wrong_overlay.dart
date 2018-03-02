import "package:flutter/material.dart";
import "dart:math";

class CorrectWrongOverlay extends StatefulWidget {
  final bool _isCorrect;

  CorrectWrongOverlay(this._isCorrect);

  @override
  State createState() => new CorrectWrongOverlayState();
}

class CorrectWrongOverlayState extends State<CorrectWrongOverlay>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        duration: new Duration(seconds: 1), vsync: this);

    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.linear);

    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => print("Tap Overlay!"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: new Transform.rotate(
                  angle: _iconAnimation.value * 2 * PI,
                  child: new Icon(
                    widget._isCorrect ? Icons.done : Icons.clear,
                    size: _iconAnimation.value * 100.0,
                  )),
            ),
            new Padding(
              padding: new EdgeInsets.only(bottom: 30.0),
            ),
            new Text(
              widget._isCorrect ? "Correct!" : "Wrong",
              style: new TextStyle(color: Colors.white, fontSize: 40.0),
            )
          ],
        ),
      ),
    );
  }
}
