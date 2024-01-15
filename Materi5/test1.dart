class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }

  void mainImage() {
    print("Winter");
  }
}

class Dog extends Animal {
  void makeSound() {
    print('Dog barks.');
  }
}

class Cat extends Animal {
  void makeSound() {
    print('Cat meows.');
  }
}

void main() {
  Cat cat = Cat();
  cat.makeSound();
  cat.mainImage();
  Dog dog = Dog();
  dog.makeSound();
}
