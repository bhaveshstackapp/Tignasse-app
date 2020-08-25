import 'package:flutter/cupertino.dart';

class CliperRect extends CustomClipper<Path> {
  @override
 /* Path getClip(Size size) {
    Path path = Path();
    return path;
  }*/

  Path getClip(Size size) {

    Path path = Path()  // Start from (0,0)
      ..moveTo(0, 0)   // move path point to (w/2,0)
      ..lineTo(size.width/2, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
