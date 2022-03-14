import 'package:flutter/material.dart';

class FifthLesson extends StatefulWidget {
  const FifthLesson({Key? key}) : super(key: key);

  @override
  _FifthLessonState createState() => _FifthLessonState();
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: const BorderSide(
        color: Colors.white,
        width: 1.0,
      ),
    ),
    elevation: 5.0,
    shadowColor: Colors.purple,
    alignment: Alignment.centerLeft,
    primary: Colors.teal,
    onPrimary: Colors.lightGreenAccent,
    textStyle: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

InputDecoration textFormFieldDecoration() {
  return InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "This is hint text",
    hintStyle: const TextStyle(
      color: Colors.black12,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: const BorderSide(
        color: Colors.amber,
        style: BorderStyle.solid,
        width: 2.0,
      ),
    ),
    focusColor: Colors.deepOrange,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: const BorderSide(
        color: Colors.orange,
        style: BorderStyle.solid,
        width: 3.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: const BorderSide(
        color: Colors.red,
        style: BorderStyle.solid,
        width: 3.0,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: const BorderSide(
        color: Colors.red,
        style: BorderStyle.solid,
        width: 3.0,
      ),
    ),
    contentPadding: const EdgeInsets.all(10.0),
    alignLabelWithHint: true,
  );
}

BoxDecoration boxDecoration() {
  return BoxDecoration(
    color: Colors.orange,
    borderRadius: BorderRadius.circular(20.0),
    shape: BoxShape.rectangle,
    border: Border.all(
      color: Colors.orange,
      width: 2.0,
    ),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.1, 0.3, 0.7, 1.0],
      colors: [Colors.orange, Colors.amber, Colors.cyan, Colors.blue],
    ),
  );
}

class _FifthLessonState extends State<FifthLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 5"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Styled elevated button",
            ),
            style: buttonStyle(),
          ),
          const SizedBox(height: 5.0,),
          TextFormField(
            decoration: textFormFieldDecoration(),
            /*
            validator: (value) {
              if (value == null) {
                return "This value is required";
              }
              return null;
            },*/
          ),
          const SizedBox(height: 5.0,),
          Container(
            decoration: boxDecoration(),
            height: 200.0,
            width: 200.0,
          ),
        ],
      ),
    );
  }
}
