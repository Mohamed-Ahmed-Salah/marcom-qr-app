import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';
import 'package:marcom_qr/core/utils/util_functions.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/res/styles/colours.dart';
import '../app/permissions_cubit/permission_cubit.dart';
import 'animated_button.dart';
import 'camera_body.dart';
import 'texured_container.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  late final MobileScannerController _mobileScannerController;

  late final AnimationController _controller;
  late final Animation<double> _widthAnim;
  late final Animation<double> _heightAnim;
  late final Animation<double> _borderAnim;
  bool _showFinalWidget = false;

  bool _toggled = false;

  @override
  void initState() {
    super.initState();

    _mobileScannerController = MobileScannerController(autoStart: false);
    _controller = AnimationController(
      vsync: this,
      duration: SizeConstants.mainDuration,
    );

    _widthAnim = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _heightAnim = Tween<double>(begin: 3, end: 100.h).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.2, 0.8, curve: Curves.easeOut),
      ),
    );

    _borderAnim = Tween<double>(begin: 0, end: SizeConstants.innerBorderRadius)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(0.4, 0.5, curve: Curves.easeOut),
          ),
        );

    _controller.addStatusListener(_listener);
  }

  _listener(status) async {
    if (status == AnimationStatus.completed) {
      await Future.delayed(SizeConstants.mainDelayDuration);
      setState(() => _showFinalWidget = true);
    }
  }

  @override
  void dispose() {
    _mobileScannerController.dispose();
    _controller.dispose();
    _controller.removeStatusListener(_listener);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colours.kBorderColor),
        borderRadius: BorderRadius.all(
          Radius.circular(SizeConstants.outerBorderRadius),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.5),
        child: Container(
          decoration: BoxDecoration(
            color: Colours.kDarkPurple,
            borderRadius: BorderRadius.circular(
              SizeConstants.innerBorderRadius,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.antiAlias, // Add this line
            children: [
              ///top
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(SizeConstants.innerBorderRadius),
                ),
                child: AnimatedContainer(
                  duration: SizeConstants.mainDuration,
                  transform: Matrix4.translationValues(
                    0,
                    _toggled ? -100.h : 0,
                    0,
                  ),

                  child: TexturedContainer(),
                ),
              ),

              ///bottom
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(SizeConstants.innerBorderRadius),
                  ),
                  child: AnimatedContainer(
                    duration: SizeConstants.mainDuration,
                    transform: Matrix4.translationValues(
                      0,
                      _toggled ? 100.h : 0,
                      0,
                    ),
                    child: Transform.flip(
                      flipY: true,
                      flipX: true,
                      child: TexturedContainer(),
                    ),
                  ),
                ),
              ),

              ///button
              BlocListener<PermissionsCubit, PermissionState>(
                listener: (BuildContext _, state) async {
                  state.whenOrNull(
                    granted: () async {
                      setState(() => _toggled = !_toggled);
                      await Future.delayed(SizeConstants.maxDelayDuration);
                      _controller.forward();
                      _mobileScannerController.start();
                    },
                    denied: () =>
                        UtilFunctions.allowCameraAccessDialog(context),
                    permanatelyDenied: () =>
                        UtilFunctions.allowCameraAccessDialog(context),
                  );
                },
                child: AnimatedButton(
                  onTap: () async {
                    if (_toggled != true) {
                      context
                          .read<PermissionsCubit>()
                          .requestCameraPermission();
                    }
                  },
                  toggled: _toggled,
                ),
              ),

              ///camera
              CameraBody(
                controller: _controller,
                widthAnim: _widthAnim,
                heightAnim: _heightAnim,
                borderAnim: _borderAnim,
                mobileScannerController: _mobileScannerController,
                showFinalWidget: _showFinalWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
