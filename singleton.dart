class President {
  President._();

  static President instance = President._();
}

void main() {
  print(President.instance);
}
