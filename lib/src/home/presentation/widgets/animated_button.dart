import 'package:flutter/material.dart';
import 'package:marcom_qr/core/constants/size_constants.dart';
import 'package:marcom_qr/core/res/styles/colours.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AnimatedButton extends StatelessWidget {
  final Function()? onTap;
  final bool toggled;

  const AnimatedButton({super.key, required this.onTap, required this.toggled});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 12),
          height: 5.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colours.kDarkPurple, width: 2),
            borderRadius: BorderRadius.circular(200),
          ),
          duration: Duration(seconds: 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(SizeConstants.outerBorderRadius),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Animated background
                AnimatedSwitcher(
                  duration: SizeConstants.slideDuration,
                  switchInCurve: Curves.easeInOut,
                  switchOutCurve: Curves.easeInOut,
                  transitionBuilder: (child, animation) {
                    // Combine slide + fade
                    final slideAnim = Tween<Offset>(
                      begin: Offset(0, 0),
                      end: Offset(0, 0),
                    ).animate(animation);

                    final fadeAnim = animation;

                    return SlideTransition(
                      position: slideAnim,
                      child: FadeTransition(opacity: fadeAnim, child: child),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colours.kLightBorderColor),
                      color: toggled
                          ? Colours.kDarkPurple
                          : Colours.kLightPurple,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    key: ValueKey(toggled),
                  ),
                ),
                // Both outgoing and incoming texts slide DOWN
                Center(
                  child: AnimatedSwitcher(
                    duration:  SizeConstants.slideDuration,
                    transitionBuilder: (child, animation) {
                      // Incoming text slides from top to center
                      return SlideTransition(
                        position:
                        Tween<Offset>(
                          begin: Offset(0, -1), // From top
                          end: Offset(0, 0), // To center
                        ).animate(
                          CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeInOut,
                          ),
                        ),
                        child: child,
                      );
                    },
                    layoutBuilder: (currentChild, previousChildren) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          // Outgoing text slides DOWN to bottom
                          ...previousChildren.map((child) {
                            return TweenAnimationBuilder<double>(
                              duration: Duration(milliseconds: 250),
                              // Half the duration
                              tween: Tween(begin: 0.0, end: 1.0),
                              builder: (context, value, child) {
                                return Transform.translate(
                                  offset: Offset(0, value * 60),
                                  // Slide down 60 pixels
                                  child: Opacity(
                                    opacity: 1.0 - value, // Fade out
                                    child: child,
                                  ),
                                );
                              },
                              child: child,
                            );
                          }),
                          if (currentChild != null) currentChild,
                        ],
                      );
                    },
                    child: toggled
                        ? Text(
                      "Access Granted",
                      key: ValueKey(toggled),
                      style: TextStyle(color: Colours.kWhite, fontSize: 16),
                    )
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt_rounded,
                          color: Colours.kWhite,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Enable Camera Acces",
                          key: ValueKey(toggled),
                          style: TextStyle(
                            color: Colours.kWhite,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
