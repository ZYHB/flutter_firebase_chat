import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/google_sign_in_options.dart';
import 'package:firebase_chat/models/models_index.dart';
import 'package:firebase_chat/store/store_index.dart';
import 'package:firebase_chat/utils/utils_index.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oktoast/oktoast.dart';
import 'state.dart';

GoogleSignIn _googleSignIn = GoogleSignInOptions.currentPlatform;

class SignInController extends GetxController {
  final state = SignInState();
  SignInController();

  final db = FirebaseFirestore.instance;

  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? '';

        UserLoginResponseEntity userProfile = UserLoginResponseEntity();
        userProfile.email = email;
        userProfile.displayName = displayName;
        userProfile.photoUrl = photoUrl;
        userProfile.accessToken = id;

        UserStore.to.saveProfile(userProfile);

        var userbase = await db
            .collection('users')
            .withConverter(
                fromFirestore: UserData.fromFirestore,
                toFirestore: (UserData userdata, options) {
                  return userdata.toFirestore();
                })
            .where('id', isEqualTo: id)
            .get();

        if (userbase.docs.isNotEmpty) {
          final data = UserData(
            id: id,
            email: email,
            name: displayName,
            photourl: photoUrl,
            location: '',
            fcmtoken: '',
            addtime: Timestamp.now(),
          );
          await db
              .collection('users')
              .withConverter(
                  fromFirestore: UserData.fromFirestore,
                  toFirestore: (UserData userdata, options) {
                    return userdata.toFirestore();
                  })
              .add(data);
        }
        showToast('login success');
      } else {
        errorToast("user == null");
      }
    } catch (e) {
      errorToast('$e');
    }
  }
}
