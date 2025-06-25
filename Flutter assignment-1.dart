// a) Abstract class Vehicle
abstract class Vehicle {
  int _speed = 0; // c) Use encapsulation to prevent direct access to _speed.

  // An abstract method move().

  void move();

  // Setter method to set speed, A non-abstract method setSpeed(int speed) to set the speed.
  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed cannot be negative.");
    }
  }

  // Protected-style getter for subclasses
  int get protectedSpeed => _speed;
}

// b) Subclass Car that extends Vehicle,
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at ${protectedSpeed} km/h.");
  }
}

// d) Main function, In the main function, create an object of Car, set the speed, and call the move() method.
main() {
  Car myCar = Car();
  myCar.setSpeed(80);
  myCar.move();
}
