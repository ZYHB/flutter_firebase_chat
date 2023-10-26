import 'package:firebase_chat/services/services_index.dart';
import 'package:get/get.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();
  // 是否登录
  bool isFirstOpen = false;

  @override
  void onInit() {
    super.onInit();
    isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  // 标记用户已打开 APP
  Future<bool> saveAlreadyOpen() async {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
  }
}
