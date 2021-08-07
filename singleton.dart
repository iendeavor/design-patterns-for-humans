class President {
  factory President() {
    return President.instance;
  }

  President._();

  static President instance = President._();
}

void main() {
  var president1 = President();
  var president2 = President();

  print(identical(president1, president2)); // true
}
