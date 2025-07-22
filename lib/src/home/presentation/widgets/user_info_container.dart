import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';
import 'package:marcom_qr/src/home/presentation/app/scan_qr_cubit/scan_qr_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/constants/size_constants.dart';
import '../../../../core/res/styles/colours.dart';
import 'custom_rich_text.dart' show CustomRichText;

class UserInfoContainer extends StatelessWidget {
  final UserResponse user;

  const UserInfoContainer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRichText(title: "Registration Id: ", data: user.registrationId),
        CustomRichText(title: "Name: ", data: user.fullName),

        CustomRichText(title: "Email: ", data: user.email),
        CustomRichText(title: "Mobile: ", data: user.mobile),
        CustomRichText(title: "Company: ", data: user.company),
        CustomRichText(title: "Job Title: ", data: user.jobTitle),
        SizedBox(height: SizeConstants.verticalPadding),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 6.h),
          ),
          onPressed: () {
            context.pop();
            context.read<ScanQrCubit>().resetState();
          },
          child: Text(
            "Confirm",
            style: TextStyle(fontSize: 16.sp, color: Colours.kWhite),
          ),
        ),
      ],
    );
  }
}
