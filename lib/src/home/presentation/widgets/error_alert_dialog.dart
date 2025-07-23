import 'package:flutter/material.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/res/styles/colours.dart';

class ErrorAlertDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool disableColorAndPadding;
  final bool isRestart;
  final Function()? onPressed;

  const ErrorAlertDialog({
    super.key,
    this.disableColorAndPadding = false,
    this.isRestart = false,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(
          disableColorAndPadding ? 0 : SizeConstants.padding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: disableColorAndPadding
                  ? null
                  : BoxDecoration(
                      color: Colours.kWhite,
                      border: Border.all(color: Colours.borderColor),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.kBlack.withValues(alpha: 0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(
                            0,
                            3,
                          ), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(SizeConstants.innerBorderRadius),
                      ),
                    ),
              child: Material(
                color: Colors.transparent,
                elevation: 0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConstants.padding,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                color: Colours.yellowWarningColor,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colours.textBlackColor.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: SizeConstants.verticalPadding),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 6.h),
                          ),
                          onPressed: onPressed,
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colours.kWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
