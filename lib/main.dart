import 'package:oop_dart_renault/model/shape.model.dart';

void main() {
  Shape shape1 = Circle(
    p1: Point(x: 10, y: 20),
    p2: Point(x: 70, y: 34),
  );

  Shape shape2 = Rectangle(
    p1: Point(x: 55, y: 99),
    p2: Point(x: 45, y: 12),
  );

  print("Circle Area: ${shape1.getArea()}");
  print("Circle Perimeter: ${shape1.getPerimeter()}");
  print((shape1 as Circle).getRadius());

  if (shape1 is Circle) {
    print("Circle Radius: ${shape1.getRadius()}");
  }

  print("Rectangle Area: ${shape2.getArea()}");
  print("Rectangle Perimeter: ${shape2.getPerimeter()}");
}
