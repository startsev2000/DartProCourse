class User {
  int _id;
  String _userName;
  String _firstName;
  String _lastName;

  User(this._id, this._userName, this._firstName, this._lastName) {
    print("User successfully created");
  }
  String get userName => _userName;

  String get firstName => _firstName;

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  set firstName(String value) {
    _firstName = value;
  }

  @override
  String toString() {
    return "username: ${userName}, name: ${firstName}, last name: ${lastName}";
  }

  void logOut() {
    print("Logged out");
  }
}

class Customer extends User {
  late int _amountOfPurchases = 0;
  late List<int> _sumsOfPurchases;

  Customer(int id, String userName, String firstName, String lastName)
      : super(id, userName, firstName, lastName) {
    _sumsOfPurchases = new List.empty(growable: true);
  }

  void addPurchase(var purchase) {
    _amountOfPurchases++;
    try {
      _sumsOfPurchases.add(purchase);
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    } finally {
      print("Operation of adding a purchase is completed.");
    }
  }
}
