import 'package:firebase_chat/firebase_options.dart';
import 'package:firebase_chat/services/services_index.dart';
import 'package:firebase_chat/store/store_index.dart';
import 'package:firebase_chat/utils/utils_index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalConfig {
  static init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initThirdParty();
    await initNetWork();
    await initNormalDefault();
  }

  /// 初始化第三发
  static initThirdParty() async {
    await SharedPreferencesTool.getInstance();
    await Get.putAsync(() => StorageService().init());
    Get.put(ConfigStore());

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  /// 配置默认数据
  static initNormalDefault() async {}

  /// 配置网络请求
  static initNetWork() async {}
}
