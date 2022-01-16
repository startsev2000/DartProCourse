import 'package:flutter/material.dart';
import 'package:tflproject/Lesson%202.dart';
import 'package:tflproject/Lesson%203.dart';
import 'package:tflproject/Lesson%204.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FourthLesson(),
    );
  }
}
