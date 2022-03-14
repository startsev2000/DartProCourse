import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ChangingWidget extends StatefulWidget {
  const ChangingWidget({Key? key}) : super(key: key);

  @override
  _ChangingWidgetState createState() => _ChangingWidgetState();
}

class _ChangingWidgetState extends State<ChangingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ConstantWidget extends StatelessWidget {
  ConstantWidget({Key? key}) : super(key: key);

  bool android = Platform.isAndroid;
  bool ios = Platform.isIOS;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Test application"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Hello world!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          height: 50.0,
          color: const Color(0xFF202020),
          child: const Center(child: Text("Hello, drawer!")),
        ),
        elevation: 10.0,
      ),
      bottomSheet: BottomAppBar(
        elevation: 2.0,
        child: Container(
          height: 40.0,
          color: Colors.purple,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.teal,
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add",),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Delete",),
          BottomNavigationBarItem(
              icon: Icon(Icons.forward), label: "Forward"),
        ],
      ),
    );
  }
}
