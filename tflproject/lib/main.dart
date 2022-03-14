import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflproject/Lesson%202.dart';
import 'package:tflproject/Lesson%203.dart';
import 'package:tflproject/Lesson%204.dart';
import 'package:tflproject/Lesson%205.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FifthLesson(),
    );
  }
}
