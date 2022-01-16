import 'package:flutter/material.dart';

class ThirdLesson extends StatefulWidget {
  const ThirdLesson({Key? key}) : super(key: key);

  @override
  _ThirdLessonState createState() => _ThirdLessonState();
}

class _ThirdLessonState extends State<ThirdLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Pay attention to flexible and expanded widget below.
        children: <Widget>[
          const Center(child: Text("Centered text widget"),),
          Container(
            height: 50.0,
            width: 150.0,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(5.0),
            color: Colors.blue,
            child: const Text(
              "This is an upgraded container"
            ),
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "This is text wrapped with padding",
                ),
              ),
              Container(),
            ],
          ),
          Wrap(),
          Expanded(child: Container(color: Colors.red,),),
          Flexible(child: Container(color: Colors.purple,),),
        ],
      ),
    );
  }
}
