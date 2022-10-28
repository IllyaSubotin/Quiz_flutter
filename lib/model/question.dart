import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/widget/answer.dart';

class question {
  final String title;
  final List<Map> answer;

  question({
    @required this.title,
    @required this.answer,
  });
}

class QuestionData {
  final data = [
    question(title: 'Ким хочеш стати?', answer: [
      {
        'answer': 'Художником',
      },
      {'answer': 'Програмістом', 'isCorect': 1},
      {
        'answer': 'Вчителем',
      },
      {
        'answer': 'Водієм',
      },
    ]),
    question(title: 'На кого вчишся?', answer: [
      {
        'answer': 'Художником',
      },
      {'answer': 'Програмістом', 'isCorect': 1},
      {
        'answer': 'Вчителем',
      },
      {
        'answer': 'Водієм',
      },
    ]),
    question(title: 'Яка професія найкраща?', answer: [
      {
        'answer': 'Художником',
      },
      {'answer': 'Програмістом', 'isCorect': 1},
      {
        'answer': 'Вчителем',
      },
      {
        'answer': 'Водієм',
      },
    ]),
  ];
  List<question> get questions => [...data];
}
