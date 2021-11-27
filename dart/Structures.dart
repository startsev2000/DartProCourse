void main() {
  // List is a collection of objects.

  List listOfInts = [1, 2, 3];
  for (int i = 0; i < listOfInts.length; i++) {
    listOfInts[i] = i + 10;
  }
  print("List of ints: ${listOfInts}");

  List<int> anotherListOfInts = new List.of({1, 2, 3});

  List<String> listOfStrings = new List.empty(growable: true);
  for (int i = 0; i < 5; i++) {
    listOfStrings.add("hui");
  }
  print("List of strings: ${listOfStrings}");

  List<dynamic> list = new List.filled(5, 1, growable: true);
  print("Filled list: ${list}");

  for (int i = 0; i < list.length; i++) {
    switch (i) {
      case 1:
      case 3:
        list[i] = 1;
        break;
      case 2:
        list[i] = "hui";
        break;
      default:
        list[i] = 3.1415;
        break;
    }
    // list.add(1); - causes endless loop, because list length is increasing
  }

  for (var el in list) {  // Another type of for-loop.
    print("Element: ${el}");
  }

  print("List with different variables: ${list}");
  print("List as map: ${list.asMap()}");

  print("");
  // Set is a collection of unique objects.

  Set<int> setOfInts = new Set.of({1, 2, 3});
  Set<String> setOfStrings = new Set.from({"Hui", "Blyat", "Pizdec", "Hui"});

  print("Set of integers: ${setOfInts}");
  print("Set of strings: ${setOfStrings}");

  print("Length of set of integers: ${setOfInts.length}");
  setOfInts.add(1);
  setOfInts.addAll({1, 5, 6});

  print("");

  // Map is a collection with elements that can be found by keys.

  Map<String, dynamic> profile = {
    "name": "Elizabeth",
    "age": 18,
    "average_mark": 8.32342,
  };
  print("Dynamic map: ${profile}");

  Map<String, String> profileWithStrings = {"name": "Kate", "age": "18"};
  print("Map with strings only: ${profileWithStrings}");

  for (var entry in profile.entries) {
    print("Value in ${entry.key}: ${entry.value}");
  }

  for (var key in profile.keys) {
    print("Key: ${key}");
  }

  for (var value in profile.values) {
    print("Value: ${value}");
  }
}
