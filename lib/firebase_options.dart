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
    apiKey: 'AIzaSyCnX6H7nfk7KN_ypfYrvagUAxQ_HKlEnIs',
    appId: '1:394402361149:web:035dc14642229ebfdddf54',
    messagingSenderId: '394402361149',
    projectId: 'horas-v3-ac8f0',
    authDomain: 'horas-v3-ac8f0.firebaseapp.com',
    storageBucket: 'horas-v3-ac8f0.appspot.com',
    measurementId: 'G-V6PDSPR0DF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8PaF4FUwIliCgfZpfpXUqWNn7snZ9pP8',
    appId: '1:394402361149:android:249e454656b77bb5dddf54',
    messagingSenderId: '394402361149',
    projectId: 'horas-v3-ac8f0',
    storageBucket: 'horas-v3-ac8f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQCXBza6Eb06dF_xfhT1PcxLpkyZgKdJk',
    appId: '1:394402361149:ios:028d234829ad2fc2dddf54',
    messagingSenderId: '394402361149',
    projectId: 'horas-v3-ac8f0',
    storageBucket: 'horas-v3-ac8f0.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQCXBza6Eb06dF_xfhT1PcxLpkyZgKdJk',
    appId: '1:394402361149:ios:028d234829ad2fc2dddf54',
    messagingSenderId: '394402361149',
    projectId: 'horas-v3-ac8f0',
    storageBucket: 'horas-v3-ac8f0.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCnX6H7nfk7KN_ypfYrvagUAxQ_HKlEnIs',
    appId: '1:394402361149:web:3e4dc64200a2b330dddf54',
    messagingSenderId: '394402361149',
    projectId: 'horas-v3-ac8f0',
    authDomain: 'horas-v3-ac8f0.firebaseapp.com',
    storageBucket: 'horas-v3-ac8f0.appspot.com',
    measurementId: 'G-FEL2NYL6H4',
  );

}