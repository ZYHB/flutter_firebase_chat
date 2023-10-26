import 'package:firebase_chat/config/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 初始化 GetX
Widget initGetMaterialApp({Widget Function(BuildContext, Widget?)? builder}) {
  return GetMaterialApp(
    /// 入口路由
    initialRoute: RouterS.configNoramlRouts(),

    /// 所有路由集合
    getPages: RouterS.getAllRoutS(),

    useInheritedMediaQuery: true,

    /// 是否显示 导航栏右上角 debug 标识
    debugShowCheckedModeBanner: false,

    builder: builder,
  );
}

/// 初始化App
initRunApp() {
  return initGetMaterialApp();
}
