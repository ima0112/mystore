import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/animation_loader.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyFullScreenLoader {
  static void showCircularProgressLoading({required BuildContext context}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Container(
            color: MyColors.white.withOpacity(0.1),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: MyColors.primary.withOpacity(0.4),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircularProgressIndicator(
                    color: MyColors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

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
