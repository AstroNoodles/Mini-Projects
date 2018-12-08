/*
 * This is PARTS 4 and 5 of the Dart Google CodeLab, learning and using the factory pattern in Dart!
 **/

import "dart:math";

abstract class BasicShape {
   factory BasicShape(String name, num sideA, num sideB){
    switch(name.toLowerCase()){
      case "rect":
        return Rect(sideA, sideB);
      case "ellipse":
        return Ellipse(sideA, sideB);
      default:
        throw "Could not create type $name";
    }
  }
  num get area;
}

// ---------------- IMPLEMENTED CLASSES --------------------
class Ellipse implements BasicShape {
  final num xDist, yDist;
  Ellipse(this.xDist, this.yDist);
  
  num get area => pi * xDist * yDist;
}

class Rect implements BasicShape {
  final num length, width;
  Rect(this.length, this.width);
	num get area => length * width;
  
}

// ------------------------ EXTENDED CLASSES ----------------------
class Circle extends Ellipse {
  final num radius;
  
  Circle(this.radius) : super(radius, radius);
}

class Square extends Rect {
  final num side;
  
  Square(this.side) : super(side, side);
}


void main(){
  final circ = BasicShape("ellipse", 5, 2);
  final square = BasicShape("rect", 7, 5);
  print(circ.area);
  print(square.area.toString() + "\n");
  
  Circle m = Circle(5);
  print("Circle Inheritance: ");
  print(m.xDist);
  print(m.area);
  
}
