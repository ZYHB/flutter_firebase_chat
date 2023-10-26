import 'package:firebase_chat/compontents/compontents_index.dart';
import 'package:firebase_chat/config/config_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'components/splash_content.dart';
import 'controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: controller.changePage,
                  itemCount: controller.state.splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: controller.state.splashData[index]["image"],
                    text: controller.state.splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          controller.state.splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      const Spacer(flex: 3),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          controller.handleSignIn();
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: controller.state.index == index ? 20 : 6,
      decoration: BoxDecoration(
        color: controller.state.index == index
            ? kPrimaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
