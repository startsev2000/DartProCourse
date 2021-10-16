bool isNegative(num number) {
  // You can write functions without bool identificator.
  if (number < 0) {
    return true;
  }
  return false;
}

// A way to write function without return.
bool isPositive(num number) => number > 0;

// Example of method with parameters specified.
// required - you are obliged to give value of parameter.
// var? - this can be null
// var variable = "value" - value that will be default in the method
Map<String, dynamic> convertProfileInfoToMap(
    {required String name, int? age, String university = "Stanford"}) {
  Map<String, dynamic> profileInfo = {
    "name": name,
    "age": age,
    "university": university,
  };
  return profileInfo;
}

// Example of method with optional parameter.
Map<String, dynamic> setProfileInfo(String name, String surname,
    [String? status]) {
  Map<String, dynamic> profileInfo = {"name": name, "surname": surname};
  if (status != null) {
    profileInfo["status"] = status;
  }
  return profileInfo;
}

void main() {
  print(isNegative(-321));
  print(isPositive(432));
}
