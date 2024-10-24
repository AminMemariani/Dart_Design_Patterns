abstract class Animal {
  factory Animal(String type) {
    switch (type) {
      case 'dog':
        return Dog();
      case 'cat':
        return Cat();
      default:
        throw Exception('Invalid animal type');
    }
  }

  void makeSound();
}

class Dog implements Animal {
  void makeSound() {
    print('Woof!');
  }
}

class Cat implements Animal {
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  Animal animal1 = Animal('dog');
  animal1.makeSound(); // Output: Woof!

  Animal animal2 = Animal('cat');
  animal2.makeSound(); // Output: Meow!
}
