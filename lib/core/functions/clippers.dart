import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);

    // first point of quadratic bezier curve
    var firstStart = Offset(size.width / 5, size.height);
    // second point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // third point of quadratic bezier curve
    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    // fourth point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height);

    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}