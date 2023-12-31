import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: TextButton(
              onPressed: controller.handleSignIn,
              child: Container(
                child: Text("Google Login"),
              )),
        ),
      ),
    );
  }
}
