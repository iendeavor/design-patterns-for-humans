import 'dart:mirrors';

class President {
  factory President() {
    return _instance;
  }

  static final President _instance = President._concrete();

  President._concrete() {
    InstanceMirror im = reflect(this);
    if (im.type.reflectedType != President)
      throw "President can't be inherited";
  }
}

void main() {
  var president1 = President();
  var president2 = President();

  print(identical(president1, president2)); // true
}
