import 'package:flutter/material.dart';

class GlobalConfig {
  static init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initThirdParty();
    await initNetWork();
    await initNormalDefault();
  }

  /// 初始化第三发
  static initThirdParty() async {}

  /// 配置默认数据
  static initNormalDefault() async {}

  /// 配置网络请求
  static initNetWork() async {}
}
