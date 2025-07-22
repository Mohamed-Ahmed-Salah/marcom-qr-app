import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';
import 'package:marcom_qr/core/res/styles/colours.dart';
import 'package:marcom_qr/src/home/presentation/app/scan_qr_cubit/scan_qr_cubit.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CameraBody extends StatelessWidget {
  const CameraBody({
    super.key,
    required AnimationController controller,
    required Animation<double> widthAnim,
    required Animation<double> heightAnim,
    required Animation<double> borderAnim,
    required MobileScannerController mobileScannerController,
    required bool showFinalWidget,
  }) : _controller = controller,
       _widthAnim = widthAnim,
       _heightAnim = heightAnim,
       _borderAnim = borderAnim,
       _mobileScannerController = mobileScannerController,
       _showFinalWidget = showFinalWidget;

  final AnimationController _controller;
  final Animation<double> _widthAnim;
  final Animation<double> _heightAnim;
  final Animation<double> _borderAnim;
  final MobileScannerController _mobileScannerController;
  final bool _showFinalWidget;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 0,
      left: 0,
      right: 0,
      child: AnimatedCrossFade(
        firstChild: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                width: MediaQuery.of(context).size.width * _widthAnim.value,
                height: _heightAnim.value,
                decoration: BoxDecoration(
                  color: Colours.kWhite,
                  borderRadius: BorderRadius.circular(_borderAnim.value),
                ),
              );
            },
          ),
        ),
        secondChild: Container(
          height: 60.h,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(
              SizeConstants.innerBorderRadius,
            ),
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(SizeConstants.innerBorderRadius),
              ),
              child: MobileScanner(
                controller: _mobileScannerController,
                onDetect: (result) {
                  context.read<ScanQrCubit>().scanQR(
                    result.barcodes.first.rawValue,
                  );
                },
              ),
            ),
          ),
        ),
        crossFadeState: _showFinalWidget
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: SizeConstants.mainDelayDuration,
      ),
    );
  }
}
