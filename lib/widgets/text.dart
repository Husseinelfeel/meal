import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class textwidgets extends StatelessWidget {
  const textwidgets({
    Key key,
    @required this.fontsize,
    @required this. title,
  }) : super(key: key);




  final double fontsize;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title
      ,
      style: TextStyle(
          fontSize: fontsize, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
