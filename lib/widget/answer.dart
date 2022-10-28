import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final Function onChangeAnswer;
  final isCorect;
  Answer({Key key, this.title, this.isCorect, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorect),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ]),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        child: Text(
          'ответ',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
