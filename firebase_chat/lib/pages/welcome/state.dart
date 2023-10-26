import 'package:firebase_chat/utils/utils_index.dart';
import 'package:get/get.dart';

class WelcomeState {
  var index = 0.obs;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": Utils.assets("images/splash_1.png")
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": Utils.assets("images/splash_2.png")
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": Utils.assets("images/splash_3.png")
    },
  ];
}
