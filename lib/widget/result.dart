import 'dart:html';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  

  const Result({Key key, this.count, this.total,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (count == 0) {
      msg = 'Темная сторона\n не для тебя. Ти слишком хорош.';
      img = Image.asset('assets/images/good.png');
    }
    if (1 <= count && count <= 2) {
      msg = 'Совсемь чуть-чуть!';
      img = Image.asset('assets/images/norm.png');
    }
    if (count == 3) {
      msg = 'Ти нечисьть во плоти!';
      img = Image.asset('assets/images/bad.png');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
              width: 120,
              height: 120,
              child: FittedBox(
                fit: BoxFit.contain,
                child: img,
              )),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          
        ],
      ),
    );
  }
}
