import 'package:flutter/material.dart';

class SignClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, 275);
    path.quadraticBezierTo(100, 250, 150, 280);
    path.quadraticBezierTo(275, 350, size.width, 325);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class HomeClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, 275);
    path.quadraticBezierTo(100, 250, 150, 280);
    path.quadraticBezierTo(275, 350, size.width, 325);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
