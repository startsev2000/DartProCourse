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
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      height: 150.0,
    ),
  );
}

Map<String, Color> messages = {
  "Hello, World!": Colors.red,
  "We are coding on Flutter": Colors.amber,
  "Mercedes or BMW?": Colors.blueAccent,
  "iPhone or Android?": Colors.green,
};

Widget listViewBuilder() {
  return ListView.builder(
    itemCount: messages.length,
    itemBuilder: (BuildContext context, int index) {
      return messageCard(
        messages.values.elementAt(index),
        messages.keys.elementAt(index),
      );
    },
    // reverse: false,
  );
}

// As an example of a real project, RCUN player page can be shown.

class _FourthLessonState extends State<FourthLesson> {
  @override
  Widget build(BuildContext context) {
    List<String> nums = ['One', 'Two', 'Free', 'Four'];
    String dropdownValue = nums[0];
    DateTime? date;
    TimeOfDay? time;
    DateTimeRange? dateTime;

    """
      Widgets for the 4th lesson:
      - ListView
      - TextField
      - DropdownButtonFormField
      - DatePicker / TimePicker / DateRangePicker
      - Some buttons (ElevatedButton / OutlinedButton)
     Also in the lesson:
      - make widgets with parameters
    """;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 4"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2010),
                lastDate: DateTime(2025),
              );
              print(date);
            },
            child: const Text("DateTimePicker"),
          ),
          ElevatedButton(
            onPressed: () async {
              time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              print(time);
            },
            child: const Text("TimePicker"),
          ),
          ElevatedButton(
            onPressed: () async {
              dateTime = await showDateRangePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(2025),
              );
              print(dateTime);
            },
            child: const Text("DateRangePicker"),
          ),
        ],
      ),
      /*ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          TextFormField(),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
          ),
          const SizedBox(
            height: 20.0,
          ),
          DropdownButtonFormField(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: nums.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),*/
      /*ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {}, child: const Text("Elevated button")),
                const SizedBox(
                  width: 10.0,
                ),
                OutlinedButton(
                    onPressed: () {}, child: const Text("Outlined button")),
              ],
            ),
          ),
          const Divider(
            thickness: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () {}, icon: const Icon(Icons.icecream)),
                const SizedBox(
                  width: 10.0,
                ),
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
      ),*/
    );
  }
}
