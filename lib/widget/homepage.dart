import 'dart:ui';
import 'package:flutter_application_1/model/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/answer.dart';
import 'package:flutter_application_1/widget/progres_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _questionIndex = 0;
  int _countResylt = 0;
  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResylt = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
          _countResylt++;
        } else {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFF000000)));
        }
        _questionIndex += 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Вікторина')),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xff2a375a),
          image: DecorationImage(
            image: AssetImage('assets/images/pngwingcom.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[
          ProgressBar(
            icons: _icons,
            count: _questionIndex,
            total: data.questions.length,
          ),
          Container(
            child: Text(data.questions[_questionIndex].title,
                style: Theme.of(context).textTheme.caption),
            padding: EdgeInsets.all(10.0),
          ),
          ...data.questions[_questionIndex].answer
              .map((value) => Answer(
                    title: value['answer'],
                    onChangeAnswer: _onChangeAnswer,
                    isCorect: value.containsKey('isCorect') ? true : false,
                  ))
              .toList(),
        ]),
      ),
    );
  }
}
