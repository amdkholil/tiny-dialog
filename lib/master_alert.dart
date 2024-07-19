import 'package:flutter/material.dart';

Widget masterAlert(
  BuildContext context, {
  required String title,
  String? message,
  Widget? child,
  required String buttonText,
  required double iconSize,
  required VoidCallback? onConfirm,
  required bool? showCancelButton,
  required String cancelButtonText,
  required String confirmButtonText,
  required IconData icon,
  required Color iconColor,
  VoidCallback? onCancel,
  ButtonStyle? confirmButtonStyle,
  ButtonStyle? cancelButtonStyle,
}) {
  assert((child != null && message == null) || (child == null && message != null), 'showCancelButton must not be null');
  return AlertDialog(
    title: Text(title, textAlign: TextAlign.center),
    icon: Icon(
      icon,
      color: iconColor,
      size: iconSize,
    ),
    content: Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: child ??
          Text(
            message ?? "",
            textAlign: TextAlign.center,
          ),
    ),
    actions: [
      if (showCancelButton == true)
        ElevatedButton(
          onPressed: () {
            if (onCancel != null) {
              onCancel.call();
            } else {
              Navigator.pop(context);
            }
          },
          style: cancelButtonStyle ??
              ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
          child: Text(cancelButtonText),
        ),
      ElevatedButton(
        onPressed: () {
          if (onConfirm != null) {
            onConfirm.call();
          } else {
            Navigator.pop(context);
          }
        },
        style: confirmButtonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
        child: Text(confirmButtonText),
      ),
    ],
    actionsAlignment: MainAxisAlignment.spaceAround,
  );
}
