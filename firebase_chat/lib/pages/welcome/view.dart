import 'package:firebase_chat/config/config_index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell(
            child: const Text("欢迎页"),
            onTap: () {
              Get.toNamed(PageIdConfig.sign_in);
            },
          ),
        ),
      ),
    );
  }
}
