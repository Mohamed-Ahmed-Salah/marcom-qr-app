import 'package:flutter/material.dart';
import 'package:marcom_qr/core/res/styles/colours.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomRichText extends StatelessWidget {
  final String title, data;

  const CustomRichText({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(fontSize: 16.sp, color: Colours.greyColor),
          ),
          TextSpan(
            text: data,
            style: TextStyle(fontSize: 18.sp, color: Colours.kBlack),
          ),
        ],
      ),
    );
  }
}
