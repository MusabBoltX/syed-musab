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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDf2CHruT7fLeUN6x6rN-pz9lKMsCJqtYY',
    appId: '1:1025667419832:web:84cbe7dce036491ec12e4d',
    messagingSenderId: '1025667419832',
    projectId: 'musabboltportfolio',
    authDomain: 'musabboltportfolio.firebaseapp.com',
    storageBucket: 'musabboltportfolio.appspot.com',
    measurementId: 'G-1TN6B05QPJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfwMVYGuqUJkwnzecN3E1TOHbC_oe4wOY',
    appId: '1:1025667419832:android:f75b0fa376b26d97c12e4d',
    messagingSenderId: '1025667419832',
    projectId: 'musabboltportfolio',
    storageBucket: 'musabboltportfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWK2wH-HeqrahvujPgfpHCib1IT5wDMwA',
    appId: '1:1025667419832:ios:9afb85cd8676e6f0c12e4d',
    messagingSenderId: '1025667419832',
    projectId: 'musabboltportfolio',
    storageBucket: 'musabboltportfolio.appspot.com',
    iosBundleId: 'com.example.webPortfolio',
  );
}
