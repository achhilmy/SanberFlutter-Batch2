void main(List<String> args) {
  Mobile mobile = Mobile(5);
  print(mobile.getName());
}

class Mobile {
  double? _name;

  Mobile(this._name);

  double? get nama => _name;

  double getName() {
    return 2 * nama! * nama!;
  }
}
