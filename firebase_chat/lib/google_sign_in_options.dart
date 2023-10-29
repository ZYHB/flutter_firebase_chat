import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// The scopes required by this application.
const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];

class GoogleSignInOptions {
  static GoogleSignIn get currentPlatform {
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

  static GoogleSignIn web = GoogleSignIn(
    scopes: scopes,
  );

  static GoogleSignIn android = GoogleSignIn(
    clientId: '',
    serverClientId: '',
    scopes: scopes,
  );

  static GoogleSignIn ios = GoogleSignIn(
    clientId:
        '294954183165-ncm3folubpkkn2ggvmebl99lb9cl2t34.apps.googleusercontent.com',
    serverClientId: '',
    scopes: scopes,
  );
}
