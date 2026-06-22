import 'dart:math';

/// Classe de base Shape
abstract class Shape {
  final Point p1;
  final Point p2;

  Shape({required this.p1, required this.p2});

  double getArea();
  double getPerimeter();
}

/// Classe Point
class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  factory Point.fromList(List<double> data) {
    return Point(x: data[0], y: data[1]);
  }

  factory Point.fromMap(Map<String, dynamic> json) {
    return Point(x: json['x'], y: json['y']);
  }

  Map<String, dynamic> toJson() {
    return {'x': x, 'y': y};
  }

  double distance(Point p) {
    double dx = p.x - x;
    double dy = p.y - y;
    return sqrt(dx * dx + dy * dy);
  }

  @override
  String toString() {
    return "Point($x,$y)";
  }

  Point copyWith({double? x, double? y}) {
    return Point(x: x ?? this.x, y: y ?? this.y);
  }
}

/// Classe Rectangle
class Rectangle extends Shape {
  Rectangle({required super.p1, required super.p2});

  @override
  double getArea() {
    return getHeight() * getWidth();
  }

  @override
  double getPerimeter() {
    return 2 * (getHeight() + getWidth());
  }

  double getHeight() {
    return (p1.y - p2.y).abs();
  }

  double getWidth() {
    return (p1.x - p2.x).abs();
  }
}

/// Classe Circle
class Circle extends Shape {
  final double radius;

  Circle({required super.p1, required super.p2})
      : radius = p1.distance(p2),
        super();

  @override
  double getArea() {
    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * pi * radius;
  }

  double getRadius() {
    return radius;
  }
}
