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
  }
}
