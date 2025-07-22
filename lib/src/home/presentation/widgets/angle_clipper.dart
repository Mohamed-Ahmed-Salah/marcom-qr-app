import 'package:flutter/material.dart';

class AngledClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    final path = Path();

    // Start from bottom-left corner
    path.moveTo(0, size.height);

    // Move up and right (20% height, 10% width)
    path.lineTo(
      size.width * 0.2,
      size.height * 0.9,
    );

    // Straight line to the next 80% of the width (now at 90% width)
    path.lineTo(size.width * 0.8, size.height * 0.9);

    // Move down and right to bottom-right (last 10% width, down 10% height)
    path.lineTo(size.width, size.height * 0.8);

    // Top-right corner
    path.lineTo(size.width, 0);

    // Top-left corner
    path.lineTo(0, 0);

    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
