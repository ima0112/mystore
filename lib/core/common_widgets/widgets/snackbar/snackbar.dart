import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class MySnackBar {
  static errorSnackBar({String message = ''}) {
    return SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.horizontal,
      content: CustomSnackBar.error(
        message: message,
      ),
    );
  }

  static successSnackBar({String message = ''}) {
    return SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.horizontal,
      content: CustomSnackBar.success(
        message: message,
      ),
    );
  }

  static warningSnackBar({String message = ''}) {
    return SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.horizontal,
      content: CustomSnackBar.info(
        backgroundColor: Colors.orange,
        message: message,
      ),
    );
  }
}
