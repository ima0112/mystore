import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:mystore/app.dart';
import 'package:mystore/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      'pk_test_51OC3pTHsw39B3mjXoIlcZy7EoYeVaw03oCn4rWrQqYQvpOr3HAYMVHMrX9TvQKiAeXZE5wY3KxwhKeHxBMBtDTS300BwRzZLNb';

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "assets/.env");

  configureDependencies();

  runApp(const App());
}
