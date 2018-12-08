/*
 * This is PART 4 of the Dart Google CodeLab, learning and using the factory pattern in Dart!
 **/

import "dart:math";

abstract class Shape {
   factory Shape(String name, num side){
    switch(name.toLowerCase()){
      case "square":
        return Square(side);
      case "circle":
        return Circle(side);
      default:
        throw "Could not create type $name";
    }
  }
  num get area;
}

class Square implements Shape {
  final num side;
  Square(this.side);
	num get area => pow(side, 2);
  
}

class Circle implements Shape {
  final num radius;
  num get area => pi * pow(radius, 2);
  
  Circle(this.radius);
}

void main(){
  final circ = Shape("circle", 5);
  final square = Shape("square", 7);
  print(circ.area);
  print(square.area);
}
