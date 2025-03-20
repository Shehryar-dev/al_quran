import 'package:flutter/material.dart';
//
// class CustomClipperEdges extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height);
// // -------------------------------------------------------
//     //left
//     final firstPoint = Offset(0, size.height - 20);
//     final lastPoint = Offset(30, size.height - 20);
//
//     path.quadraticBezierTo(
//         firstPoint.dx, firstPoint.dy, lastPoint.dx, lastPoint.dy);
//
//     //stright line
//     final secondFirstPoint = Offset(6, size.height - 20);
//     final secondLastPoint = Offset(size.width - 30, size.height - 20);
//
//     path.quadraticBezierTo(secondFirstPoint.dx, secondFirstPoint.dy,
//         secondLastPoint.dx, secondLastPoint.dy);
//
//     //right Point
//     final thirdFirstPoint = Offset(size.width, size.height - 20);
//     final thirdLastPoint = Offset(size.width, size.height);
//
//     path.quadraticBezierTo(thirdFirstPoint.dx, thirdFirstPoint.dy,
//         thirdLastPoint.dx, thirdLastPoint.dy);
//
// // -------------------------------------------------------
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

class CustomClipperEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);

    // Left Curve
    final firstControlPoint = Offset(size.width * 0.1, size.height);
    final firstEndPoint = Offset(size.width * 0.3, size.height - 10);
    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    // Center Curve
    final secondControlPoint = Offset(size.width * 0.5, size.height - 30);
    final secondEndPoint = Offset(size.width * 0.7, size.height - 10);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    // Right Curve
    final thirdControlPoint = Offset(size.width * 0.9, size.height);
    final thirdEndPoint = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(
        thirdControlPoint.dx, thirdControlPoint.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
