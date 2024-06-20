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
    apiKey: 'AIzaSyAtL71U0E3HZJbGMDlPVbvJ4aCit6VVLQo',
    appId: '1:71665473956:web:078d4fe5fbc679fd9ec931',
    messagingSenderId: '71665473956',
    projectId: 'graduation-cae93',
    authDomain: 'graduation-cae93.firebaseapp.com',
    storageBucket: 'graduation-cae93.appspot.com',
    measurementId: 'G-6BR7FQBM1H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOg9XP2ahDmTXrx8lUejQuOs3ZGMqwEh8',
    appId: '1:71665473956:android:f82e43a5c4786a849ec931',
    messagingSenderId: '71665473956',
    projectId: 'graduation-cae93',
    storageBucket: 'graduation-cae93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfd_K3GhkfZyDTvSokIsLAcqvtQLtfSDU',
    appId: '1:71665473956:ios:2505e7a17155bf2a9ec931',
    messagingSenderId: '71665473956',
    projectId: 'graduation-cae93',
    storageBucket: 'graduation-cae93.appspot.com',
    iosBundleId: 'com.example.campuspay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfd_K3GhkfZyDTvSokIsLAcqvtQLtfSDU',
    appId: '1:71665473956:ios:2505e7a17155bf2a9ec931',
    messagingSenderId: '71665473956',
    projectId: 'graduation-cae93',
    storageBucket: 'graduation-cae93.appspot.com',
    iosBundleId: 'com.example.campuspay',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAtL71U0E3HZJbGMDlPVbvJ4aCit6VVLQo',
    appId: '1:71665473956:web:063d82d39bdcdc579ec931',
    messagingSenderId: '71665473956',
    projectId: 'graduation-cae93',
    authDomain: 'graduation-cae93.firebaseapp.com',
    storageBucket: 'graduation-cae93.appspot.com',
    measurementId: 'G-HFLE452ZZR',
  );
}