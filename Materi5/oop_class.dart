void main(List<String> args) {
  Animal animal = Animal("Wolf", 16);
  print(animal.age);
  print(animal.name);
  animal.soundEffect();
}

class Animal {
  String? name;
  int? age;

  Animal(this.name, this.age);

  void soundEffect() {
    print("This is animal class");
  }
}
