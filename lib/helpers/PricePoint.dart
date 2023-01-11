import 'package:collection/collection.dart';

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}

List<PricePoint> get pricePoints {
  final data = <double>[2, 8, 7, 9, 10, 25, 9, 3, 22, 26, 28, 22, 20];

  return data
      .mapIndexed(
          ((index, element) => PricePoint(x: index.toDouble(), y: element)))
      .toList();
}

List<PricePoint> get otherPoints {
  final data = <double>[0, 1, 5, 6, 11, 21, 14, 18, 19, 23, 27, 26, 27];

  return data
      .mapIndexed(
          ((index, element) => PricePoint(x: index.toDouble(), y: element)))
      .toList();
}

List<PricePoint> get morePoints {
  final data = <double>[10, 11, 12, 21, 22, 20, 25, 26, 28, 19, 17, 14, 15];

  return data
      .mapIndexed(
          ((index, element) => PricePoint(x: index.toDouble(), y: element)))
      .toList();
}
