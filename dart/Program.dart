import 'dart:io';
import 'Classes.dart';

void main() {
  """
  Variables in Dart
  """;

  String string = "This is a string";

  int integer = 12;
  double Double = 0.9;
  num number = 0.0; // This can be both int and double.

  bool boolean = false;
  Symbol symbol = #bar;

  var variable = 0; // auto-detecting variable type
  final finalVariable = 5; // can be set only once
  const constantVariable = 0; // compile-time constant variable

  // dynamic and Object - two similar types of variables
  // important to see difference between those two types
  dynamic Dynamic = 0;
  Dynamic = 'changed dynamic';
  Object object = 0;

  """
  Input and output in Dart
  """;

  int? int1 = int.parse(stdin.readLineSync()!);
  assert(int1 > 0, "Here you can't input negative nums");

  String? str1 = stdin.readLineSync();
  double? double1 = double.parse(stdin.readLineSync()!);

  var variable1 =
      stdin.readLineSync(); // var input is always String without parse
  dynamic dynamic1 = stdin.readLineSync(); // same as var
  print(variable1.runtimeType);
  print(dynamic1.runtimeType);

  // Input can be incorrect. To fix this issue, we use tryParse.

  int? int2 = int.tryParse(stdin.readLineSync()!);
  double? double2 = double.tryParse(
      stdin.readLineSync()!); // output null if parse not successful

  // Various ways to output
  int int3 = 1231;
  print(int3);
  stdout.write("Int is $int3");
  stdout.writeln("Same int is $int3");

  """
  Basic operations with variables
  """;
  int int4 = 2 + 3;
  int4 = 3 - 2;
  int4 = int4 * 5; // turns into double
  double double3 = int4 / 5;
  int4++;
  int4--;
  String str2 = "eq";
  str2 += "s"; // strings can be changed

  """
  if - else loop
  """;

  double double4 = 21, double5 = 24;
  bool flag = true;
  if (double4 == double5 && double4 == 21 || double5 == 24 && flag) {
    print("Done");
  } else if (double4 == 23) {
    print(23);
  } else {
    print(43);
  }

  """
  for, while loops
  """;

  int int5 = 30;
  String str3 = "";
  while (int5 != 0) {
    str3 += "a";
    int5--;
  }

  int int6 = 10;
  do {
    int6++;
  } while (int6 != 15);

  for (int i = 0; i < 9; i++) {
    str3 += "a";
  }

  """
  switch - case
  """;

  int? variableForSwitch = int.tryParse(stdin.readLineSync()!);
  int result;
  switch (variableForSwitch) {
    case 1:
      result = 0;
      break;
    case 2:
    case 3:
      result = 1;
      break;
    default:
      result = -1;
      break;
  }
  print(result);
}
