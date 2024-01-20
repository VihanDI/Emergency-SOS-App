// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCCDMwq6uAlP5a7dy4YW6fiOEw5G0DC98c',
    appId: '1:770812025282:web:5ec8685d300347dc099e5b',
    messagingSenderId: '770812025282',
    projectId: 'emergencysos-10bab',
    authDomain: 'emergencysos-10bab.firebaseapp.com',
    storageBucket: 'emergencysos-10bab.appspot.com',
    measurementId: 'G-2Q1P26T0B5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtONjunX-cNVwnbywBrCHOX4ZvwxRrYg8',
    appId: '1:770812025282:android:13093c91f4c25b92099e5b',
    messagingSenderId: '770812025282',
    projectId: 'emergencysos-10bab',
    storageBucket: 'emergencysos-10bab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6LVDPEwVN6RDiOSyZ7Q8XBXzMecHtNXM',
    appId: '1:770812025282:ios:415e18e5051e8adb099e5b',
    messagingSenderId: '770812025282',
    projectId: 'emergencysos-10bab',
    storageBucket: 'emergencysos-10bab.appspot.com',
    iosBundleId: 'com.example.flutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6LVDPEwVN6RDiOSyZ7Q8XBXzMecHtNXM',
    appId: '1:770812025282:ios:664cb5a38824e058099e5b',
    messagingSenderId: '770812025282',
    projectId: 'emergencysos-10bab',
    storageBucket: 'emergencysos-10bab.appspot.com',
    iosBundleId: 'com.example.flutterApp.RunnerTests',
  );
}