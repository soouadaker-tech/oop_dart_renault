import 'dart:math';

abstract class Shape {
  final Point p1;
  final Point p2;

  Shape({required this.p1, required this.p2});

  double getArea();
  double getPerimeter();
}

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});
}

class Circle extends Shape {
  final double radius;

  Circle({required super.p1, required this.radius})
      : super(p2: Point(x: p1.x + radius, y: p1.y + radius));

  @override
  double getArea() => pi * radius * radius;

  @override
  double getPerimeter() => 2 * pi * radius;

  double getRadius() => radius;
}

void main() {
  Shape shape1 = Circle(p1: Point(x: 0, y: 0), radius: 5);

  print((shape1 as Circle).getRadius());   
  print(shape1.getArea());                 
  print(shape1.getPerimeter());           
}
