class Animal {
  Animal();

  void sound() => print("Binatangnya bersuara");

  void eat() => print("Binatangnya makan");
}

class Dog extends Animal {
  @override
  void sound() => print("Suara anjing: Woof woof");

  @override
  void eat() => print("Anjing sedang makan");
}

class Cat extends Animal {
  @override
  void sound() => print("Suara kucing: Meow meow");

  @override
  void eat() => print("Kucing sedang makan");
}

void main() {
  Animal loli = Dog();
  Animal rawr = Cat();

  loli.sound();
  loli.eat();

  rawr.sound();
  rawr.eat();
}