import 'package:flutter/material.dart';

void desc() {
  """
  - BuildContext - sth that describes a position of widget in a widget tree
  
    Widgets to tell about during the third lesson:
    - Scaffold
      - appBar
      - body
      - bottomNavigationBar
    - Text
      - TextStyle
    - Center
    - Container
      - padding
      - width
      - height
      - decoration
      - color
      - alignment
    - AppBar
      - backgroundColor
      - title
      - centerTitle
    - Column
      - mainAxisAlignment
      - crossAxisAlignment
    - Row
      - mainAxisAlignment
      - crossAxisAlignment
    - Expanded
      - flex
  """;
}

class ThirdLesson extends StatelessWidget {
  const ThirdLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text(
          "This is appbar!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 2.0,
        actions: const <Widget>[
          // put buttons here
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.teal,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.teal,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.teal,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: 200.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.teal,
              ),
              alignment: Alignment.center,
              // color: Colors.teal, this wont work
              child: const Text(
                "Hello, world!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
