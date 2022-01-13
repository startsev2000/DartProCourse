import 'package:flutter/material.dart';

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
  const ConstantWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Test application"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "Hello, world!",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.purple,
          ),
        ),
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
  }
}
