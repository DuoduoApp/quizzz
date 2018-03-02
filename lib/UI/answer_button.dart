import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  bool answer = false;
  AnswerButton(this.answer);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Material(
      color: answer ? Colors.greenAccent : Colors.redAccent,
      child: new InkWell(
        onTap: () => print("You answered " + answer.toString()),
        child: new Center(
          child: new Container(
            child: new Text(answer.toString().toUpperCase()),
          ),
        ),
      ),
    ));
  }
}
