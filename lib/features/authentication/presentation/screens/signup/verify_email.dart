import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:mystore/core/common_widgets/widgets/success_screen/success_screen.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(MyImages.deliveredEmailIllustration),
                width: MyHelperFunctions.screenWidth(context) * 0.6,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Title & SubTitle
              Text(
                MyTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              Text(
                'imandracardenas0@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessScreen(
                          image: MyImages.staticSuccessIllustration,
                          title: MyTexts.confirmEmailTitle,
                          subTitle: MyTexts.confirmEmailSubtitle,
                          onPressed: () {
                            context.goNamed(MyRoutes.login.name);
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text(MyTexts.myContinue),
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(MyTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
