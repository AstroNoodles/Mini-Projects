import "dart:math";

/*
* This dart file is a Part 1 of a collection of my Dart Code from the Intro to Dart for Java Developers Google Codelab.
* https://codelabs.developers.google.com/codelabs/from-java-to-dart
*/

void bikeTest(){
  final bike = Bicycle(2, 20);
  print(bike);
  
  for (int i = 0; i < 25; i++) {
    bike.applySpeed(i);
    print(bike);
  }
}

void rectTest(){
  Rectangle rect1 = new Rectangle();
  Rectangle rect2 = new Rectangle(origin: const Point(5, 5), width: 25, height: 25);
  print(rect1);
  print(rect2);
}

void main() {
  print("Hello");
  rectTest();
}

// A more complex Rectangle class
class Rectangle {
  	int width;
  	int height;
  	Point origin;
  
  Rectangle({this.origin= const Point(0, 0), this.width=0, this.height=0});
  
  @override
  String toString() => "Origin: (${origin.x}, ${origin.y}), Width: ${width}, Height: ${height}";
  
}

// A simple Dart Class
class Bicycle {
  int cadence;
  int _speed = 10;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applySpeed(int mSpeed) => _speed += mSpeed;

  void decreaseSpeed(int mSpeed) => _speed -= mSpeed;

  @override
  String toString() => "Bicycle at ${_speed} mph";
}
