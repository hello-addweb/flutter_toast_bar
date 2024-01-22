/// Documentation
///
/// flutter_toast_bar library collection.
library flutter_toast_bar;

import 'package:flutter/material.dart';

/// A FlutterToastBar.
class FlutterToastBar {
  FlutterToastBar();

  /// showToast bar
  static showToast(
      {required BuildContext context,
      required String message,
      Color? backgroundColor}) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.fixed,
        backgroundColor: backgroundColor ?? Colors.black,
        elevation: 0,
      ),
    );
  }
}
