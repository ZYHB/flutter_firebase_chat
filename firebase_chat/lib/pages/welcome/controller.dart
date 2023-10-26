import 'package:firebase_chat/config/config_index.dart';
import 'package:firebase_chat/store/store_index.dart';
import 'package:get/get.dart';

import 'state.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();

  changePage(int index) async {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(PageIdConfig.sign_in);
  }
}
