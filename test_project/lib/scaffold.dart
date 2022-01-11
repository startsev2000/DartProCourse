import 'package:flutter/material.dart';

Scaffold scaffold = Scaffold(
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
          color: Colors.green,
          fontSize: 16.0,
          fontStyle: FontStyle.italic,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50.0,
          color: Colors.red,
        ),
      ),
    ],
  ),
  endDrawer: Drawer(
    child: Container(
      height: 50.0,
      color: Colors.red,
    ),
  ),
  bottomSheet: BottomAppBar(
    elevation: 2.0,
    child: Container(
      height: 40.0,
      color: Colors.red,
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    fixedColor: Colors.red,
    currentIndex: 1,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
      BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Delete"),
      BottomNavigationBarItem(
          icon: Icon(Icons.forward), label: "Forward"),
    ],
  ),
);
