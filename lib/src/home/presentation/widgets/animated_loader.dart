import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';
import 'package:marcom_qr/core/res/styles/colours.dart';
import 'package:marcom_qr/src/home/presentation/app/scan_qr_cubit/scan_qr_cubit.dart';
import 'package:marcom_qr/src/home/presentation/widgets/user_info_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'custome_animated_switcher.dart';
import 'error_alert_dialog.dart';

class AnimatedLoader extends StatelessWidget {
  const AnimatedLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanQrCubit, ScanQrState>(
      builder: (context, state) {
        double radius = SizeConstants.outerBorderRadius;
        state.whenOrNull(
          loading: () {
            radius = 100.w;
          },
        );
        return Center(
          child: Padding(
            padding: EdgeInsets.all(SizeConstants.padding),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colours.kWhite,
                border: Border.all(color: Colours.borderColor),
                boxShadow: [
                  BoxShadow(
                    color: Colours.kBlack.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    state != const ScanQrState.loading() ? radius : 100.w,
                  ),
                ),
              ),
              duration: SizeConstants.mainDelayDuration,
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: EdgeInsets.all(SizeConstants.padding),
                child: AnimatedSize(
                  duration: SizeConstants.slideDuration,
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: Material(
                    key: Key(state.toString()),
                    color: Colors.transparent,
                    elevation: 0,
                    child: CustomAnimatedSwitcher(
                      child: state.when(
                        initial: () => const CircularProgressIndicator(),
                        loading: () => const CircularProgressIndicator(),
                        failed: (message, _) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ErrorAlertDialog(
                              disableColorAndPadding: true,
                              onPressed: () {
                                Navigator.pop(context);
                                context.read<ScanQrCubit>().resetState();
                              },
                              title: "Something went wrong",
                              subtitle: message,
                            ),
                          ],
                        ),
                        success: (user) => UserInfoContainer(user: user),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
