import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/utils/decoder/decoder.dart';

class MyAnimationLoader extends StatelessWidget {
  final String? text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionTap;

  const MyAnimationLoader({
    super.key,
    required this.animation,
    this.text,
    this.showAction = false,
    this.actionText,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
            decoder: (bytes) => MyLottieDecoder.customDecoder(bytes),
          ),
          const SizedBox(height: MySizes.defaultSpace),
          text != null
              ? Text(
                  text!,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                )
              : const SizedBox(),
          const SizedBox(height: MySizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionTap,
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: MyColors.light),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
