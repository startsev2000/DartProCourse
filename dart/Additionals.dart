library toDo;

class ToDo {
  final String who;
  final String what;

  const ToDo(this.who, this.what);
}

typedef NumList = List<num>;
typedef StringList = List<String>;

typedef VarMap<X> = Map<X, X>;

void main() {
  VarMap<String> varMap = {};
  print(varMap.runtimeType);
}

@ToDo("Evgeny S.", "Finish method of checking users")
void checkUsers() {
  // some code that will be written
  print("All users checked");
}

/// The code above describes how typedef works.
/// It is similar to typedef in C++.
class Pair {
  int _id;
  bool _isAdmin;

  Pair(this._id, this._isAdmin);

  int get id => _id;
  bool get isAdmin => _isAdmin;
}

// Example of working with asynchronous programming.
Future<List<int>> getAdminUsers(Stream<Pair> stream) async {
  List<int> admins = [];
  try {
    await for (var user in stream) {
      if (user.isAdmin) {
        admins.add(user.id);
      }
    }
  } catch (e) {
    print(e.toString());
  }
  return admins;
}
