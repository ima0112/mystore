// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDDpeYHlu_DYCHfwG5ZhoRNEzf1rcZ-sVg',
    appId: '1:262968994477:web:b306d0e2c38e7aea157424',
    messagingSenderId: '262968994477',
    projectId: 'mystore-678ee',
    authDomain: 'mystore-678ee.firebaseapp.com',
    storageBucket: 'mystore-678ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDonIQNl3J18XK85ZQWsxNOG2cw1j4rSE4',
    appId: '1:262968994477:ios:7db8ad37536fdc32157424',
    messagingSenderId: '262968994477',
    projectId: 'mystore-678ee',
    storageBucket: 'mystore-678ee.appspot.com',
    androidClientId: '262968994477-g1gcud4e8j98kvm88i8b7snsma7f210l.apps.googleusercontent.com',
    iosClientId: '262968994477-0jfnsn223our8cvfuffmelr40ecue3uq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mystore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDonIQNl3J18XK85ZQWsxNOG2cw1j4rSE4',
    appId: '1:262968994477:ios:7db8ad37536fdc32157424',
    messagingSenderId: '262968994477',
    projectId: 'mystore-678ee',
    storageBucket: 'mystore-678ee.appspot.com',
    androidClientId: '262968994477-g1gcud4e8j98kvm88i8b7snsma7f210l.apps.googleusercontent.com',
    iosClientId: '262968994477-0jfnsn223our8cvfuffmelr40ecue3uq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mystore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDDpeYHlu_DYCHfwG5ZhoRNEzf1rcZ-sVg',
    appId: '1:262968994477:web:6180985cfd909714157424',
    messagingSenderId: '262968994477',
    projectId: 'mystore-678ee',
    authDomain: 'mystore-678ee.firebaseapp.com',
    storageBucket: 'mystore-678ee.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDGMp4d_RUdInqbIDZr9TdUPaLDvFQah0',
    appId: '1:262968994477:android:f24696493f487b68157424',
    messagingSenderId: '262968994477',
    projectId: 'mystore-678ee',
    storageBucket: 'mystore-678ee.appspot.com',
  );

}