import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:mystore/app.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:mystore/features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:mystore/firebase_options.dart';
import 'package:mystore/core/injection/injection_container.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      'pk_test_51OC3pTHsw39B3mjXoIlcZy7EoYeVaw03oCn4rWrQqYQvpOr3HAYMVHMrX9TvQKiAeXZE5wY3KxwhKeHxBMBtDTS300BwRzZLNb';

  //Load our .env file that contains our Stripe Secret key

  await configureDependencies();
  await dotenv.load(fileName: "assets/.env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterNativeSplash.remove();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignUpFormBloc>(),
        ),
      ],
      child: const App(),
    ),
  );
}
