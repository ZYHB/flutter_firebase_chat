import 'package:firebase_chat/pages/sign_in/bindings.dart';
import 'package:firebase_chat/pages/sign_in/view.dart';
import 'package:firebase_chat/pages/welcome/bindings.dart';
import 'package:firebase_chat/pages/welcome/view.dart';
import 'package:get/get.dart';
import '../dataconfig/page_id_config.dart';

class ProjectPageS {
  static final routers = [
    GetPage(
      name: PageIdConfig.index,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: PageIdConfig.sign_in,
      page: () => const SignInPage(),
      binding: SignInBindings(),
    ),
  ];
}
