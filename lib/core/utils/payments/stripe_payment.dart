import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/widgets/success_screen/success_screen.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class StripePaymnet {
  static final StripePaymnet _singleton = StripePaymnet._internal();

  factory StripePaymnet() {
    return _singleton;
  }

  StripePaymnet._internal();

  ///Initializes and displays a payment sheet.
  ///This will be used to create the modal of the
  ///payment sheet where we will fill in our card details and pay.
  ///We pass the customer_secret obtained from the
  ///payment intent from the previous step.
  static Future<void> makePayment({required String amount}) async {
    try {
      Map<String, dynamic>? paymentIntent =
          await _createPaymentIntent(amount, 'USD');

      //STEP 2
      //Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
            paymentSheetParameters: SetupPaymentSheetParameters(
              appearance: const PaymentSheetAppearance(
                colors: PaymentSheetAppearanceColors(
                  primary: MyColors.primary,
                ),
              ),
              customFlow: false,
              paymentIntentClientSecret:
                  paymentIntent!['client_secret'], //Gotten from payment intent
              style: ThemeMode.dark,
              merchantDisplayName: 'Ikay',
              googlePay: const PaymentSheetGooglePay(
                merchantCountryCode: 'US',
                testEnv: true,
              ),
            ),
          )
          .then((value) {});

      await _displayPaymentSheet();
    } catch (err) {
      throw Exception(err);
    }
  }

  ///Displays a payment sheet
  static _displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) {
        _paymentSuccess();
      }).onError((error, stackTrace) {
        throw Exception(error);
      });
    } on StripeException catch (e) {
      if (kDebugMode) {
        print('Error is:---> $e');

        Fluttertoast.showToast(
            msg: 'Error from Stripe: ${e.error.localizedMessage}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('$e');
      }
    }
  }

  //STEP 1
  ///Sends a post request to Stripe with a body containing
  ///the currency we are paying in and the amount.
  ///In response, Stripe returns a payment intent.
  static _createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': _calculateAmount(amount),
        'currency': currency,
      };

      //Make post request to Stripe
      Dio dio = Dio();
      var response = await dio.postUri(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        data: body,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${dotenv.env['STRIPE_SECRET']}',
            'Content-Type': 'application/x-www-form-urlencoded'
          },
        ),
      );
      return response.data;
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  static _calculateAmount(String amount) {
    final calculatedAmout = (int.parse(amount)) * 100;
    return calculatedAmout.toString();
  }

  static _paymentSuccess() {
    final context = AppRoute.globalContext!;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SuccessScreen(
          image: Image(
            image: const AssetImage(MyImages.paymentSuccess),
            width: MyHelperFunctions.screenWidth(context) * 0.6,
          ),
          title: 'Payment Success!',
          subTitle: 'Your item will be shipped soon',
          onPressed: () {
            context.goNamed(MyRoutes.home.name);
          },
        ),
      ),
    );
  }
}
