import 'dart:ui';

import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final total;
  final count;
  final icons;

  const ProgressBar({Key key, this.count, this.icons, this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
            ),
          ),
          SizedBox(width: 10),
          ...icons,
        ],
      ),
    );
  }
}
