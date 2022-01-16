import 'package:flutter/material.dart';

class FourthLesson extends StatefulWidget {
  const FourthLesson({Key? key}) : super(key: key);

  @override
  _FourthLessonState createState() => _FourthLessonState();
}

Card messageCard(Color color, String text) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Container(
      color: color,
      child: Text(
        text,
      ),
      height: 150.0,
    ),
  );
}

// As an example of a real project, RCUN player page can be shown.

class _FourthLessonState extends State<FourthLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 4"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text("Elevated button")),
                const SizedBox(width: 10.0,),
                OutlinedButton(onPressed: () {}, child: const Text("Outlined button")),
              ],
            ),
          ),
          const Divider(thickness: 2.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () {}, icon: const Icon(Icons.icecream)),
                const SizedBox(width: 10.0,),
                TextButton(onPressed: () {}, child: const Text("TextButton"))
              ],
            ),
          ),
          const Divider(),
          messageCard(Colors.red, "Red card"),
          messageCard(Colors.blue, "Blue card"),
          messageCard(Colors.yellow, "Yellow card"),
          messageCard(Colors.green, "Green card"),
          messageCard(Colors.purple, "Purple card"),
          messageCard(Colors.deepOrange, "Orange card"),
          messageCard(Colors.amber, "Amber card"),
          messageCard(Colors.teal, "Teal card"),
          //DropdownButton(items: items, onChanged: onChanged),
        ],
      ),
    );
  }
}
