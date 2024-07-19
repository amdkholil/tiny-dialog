library tiny_dialog;

import 'package:flutter/material.dart';
import 'package:tiny_dialog/master_alert.dart';

class TinyDialog {
  static void success(
    BuildContext context, {
    required String message,
    String title = 'Success!',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.check_circle_rounded,
    Color iconColor = Colors.green,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          message: message,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
        );
      },
    );
  }

  static void info(
    BuildContext context, {
    required String message,
    String title = 'Info!',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.info_rounded,
    Color iconColor = Colors.blue,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          message: message,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
        );
      },
    );
  }

  static void warning(
    BuildContext context, {
    required String message,
    String title = 'Warning!',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.warning_rounded,
    Color iconColor = const Color.fromARGB(255, 219, 165, 0),
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          message: message,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
        );
      },
    );
  }

  static void error(
    BuildContext context, {
    required String message,
    String title = 'Error!',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.error,
    Color iconColor = const Color.fromARGB(255, 219, 0, 0),
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          message: message,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
        );
      },
    );
  }

  static void confirm(
    BuildContext context, {
    required String message,
    required VoidCallback onConfirm,
    String title = 'Confirm?',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onCancel,
    bool showCancelButton = true,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.question_mark_rounded,
    Color iconColor = Colors.indigo,
    ButtonStyle? confirmButtonStyle,
    ButtonStyle? cancelButtonStyle,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          message: message,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          onCancel: onCancel,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
          confirmButtonStyle: confirmButtonStyle,
          cancelButtonStyle: cancelButtonStyle,
        );
      },
    );
  }

  static void custom(
    BuildContext context, {
    required Widget child,
    required VoidCallback onConfirm,
    String title = 'Confirm?',
    String buttonText = 'Ok',
    double iconSize = 120,
    VoidCallback? onCancel,
    bool showCancelButton = true,
    String confirmButtonText = 'Ok',
    String cancelButtonText = 'Cancel',
    IconData icon = Icons.question_mark_rounded,
    Color iconColor = Colors.indigo,
    ButtonStyle? confirmButtonStyle,
    ButtonStyle? cancelButtonStyle,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return masterAlert(
          context,
          child: child,
          title: title,
          buttonText: buttonText,
          onConfirm: onConfirm,
          onCancel: onCancel,
          iconSize: iconSize,
          showCancelButton: showCancelButton,
          cancelButtonText: cancelButtonText,
          confirmButtonText: confirmButtonText,
          icon: icon,
          iconColor: iconColor,
          confirmButtonStyle: confirmButtonStyle,
          cancelButtonStyle: cancelButtonStyle,
        );
      },
    );
  }
}
