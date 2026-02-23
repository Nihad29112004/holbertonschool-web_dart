void outer(String name, String id) {
  String inner() {
    var parts = name.split(' ');
    var firstName = parts[0];
    var lastNameInitial = parts[1][0];
    return "Hello Agent $lastNameInitial.$firstName your id is $id";
  }

  print(inner());
}