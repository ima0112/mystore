import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/animation_loader.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyFullScreenLoader {
  static void showLoadingDialog(
      {required BuildContext context,
      String? message,
      required String animation}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Container(
            color: MyHelperFunctions.isDarkMode(context)
                ? MyColors.dark
                : MyColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250),
                MyAnimationLoader(text: message, animation: animation)
              ],
            ),
          ),
        );
      },
    );
  }

  static stopLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
