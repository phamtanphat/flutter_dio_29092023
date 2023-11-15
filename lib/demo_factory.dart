class Person {

  Person.init();

  factory Person(Type type) {
    switch (type) {
      case Type.MALE:
        return Male();
      case Type.FEMALE:
        return Female();
    }
  }
}

class Male extends Person {

  Male() : super.init();

}

class Female extends Person {

  Female() : super.init();
}

enum Type { MALE, FEMALE }
