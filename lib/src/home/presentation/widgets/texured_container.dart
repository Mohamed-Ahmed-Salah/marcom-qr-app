import 'package:flutter/material.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'angle_clipper.dart';
import 'line_texture.dart';

class TexturedContainer extends StatelessWidget {
  const TexturedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(SizeConstants.innerBorderRadius),
      ),
      child: SizedBox(
        height: 32.h,
        child: ClipPath(
          clipper: AngledClipper(),
          child: Container(
            width: 100.w,
            height: 30.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [
                  Color(0xFF6B46C1), // Purple
                  Color(0xFF553C9A), // Darker purple
                  Color(0xFF4C1D95), // Even darker purple
                ],
              ),
            ),
            child: CustomPaint(painter: DiagonalLinesPainter()),
          ),
        ),
      ),
    );
  }
}
