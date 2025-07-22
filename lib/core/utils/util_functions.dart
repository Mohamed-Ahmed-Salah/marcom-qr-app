import 'package:flutter/material.dart';
import 'package:marcom_qr/core/res/styles/colours.dart';
import 'package:permission_handler/permission_handler.dart';

class UtilFunctions{
  static void showSnackBar({required BuildContext context,required String message,
    Color backgroundColor= Colours.errorColor,
    Duration duration = const Duration(seconds: 5),
    IconData? icon,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colours.kWhite),
              const SizedBox(width: 8),
            ],
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  static allowCameraAccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Camera Permission'),
        content: Text(
          'This app needs camera access to scan QR codes. Please grant permission from settings.',
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close dialog
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colours.hintTextColor),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pop(); // Close dialog
                    await openAppSettings(); // Open app settings
                  },
                  child: Text(
                    'Open Settings',
                    style: TextStyle(color: Colours.kWhite),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}