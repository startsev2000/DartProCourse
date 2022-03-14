class User {
  /// A private field starts with '_'.
  /// All other fields are public.
  /// It is always better to use private fields when working in classes.

  int _id;
  String _userName;
  String _firstName;
  String _lastName;
  int _points = 0;

  User(this._id, this._userName, this._firstName, this._lastName) {
    print("User successfully created");
  }
  String get userName => _userName;

  String get firstName => _firstName;

  //String get lastName => _lastName;

  int get points => _points;

  //set lastName(String value) {
  //  _lastName = value;
  //}

  set firstName(String value) {
    _firstName = value;
  }

  set points(int value) {
    _points = value;
  }

  @override
  String toString() {
    return "username: ${userName}, name: ${firstName}, last name: ${_lastName}";
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

class Admin extends User with AdminOpportunities {
  Admin(int id, String userName, String firstName, String lastName)
      : super(id, userName, firstName, lastName);

  @override
  void givePoints(User user, int points) {
    user.points = points;
  }
}

mixin AdminOpportunities {
  bool canGivePoints = true;
  void givePoints(User user, int points);
}

void main() {
  User user = new User(55, "username", "firstname", "lastname");
  print(user._lastName);
}
