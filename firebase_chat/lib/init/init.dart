
import 'package:firebase_chat/config/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
// 适配屏幕
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

/// 模拟iphone 13
Size screenSize = const Size(390.0, 844.0);

/// 初始化 GetX
Widget initGetMaterialApp({
  Widget Function(BuildContext, Widget?)? builder,
}) {
  return GetMaterialApp(
    /// 入口路由
    initialRoute: RouterS.configNoramlRouts(),

    /// 所有路由集合
    getPages: RouterS.getAllRoutS(),

    /// 是否显示 导航栏右上角 debug 标识
    debugShowCheckedModeBanner: false,

    builder: builder,
  );
}

/// 初始屏幕适配
Widget initScreenUtil({
  required Widget Function(BuildContext, Widget?) builder,
  bool useInheritedMediaQuery = true,
}) {
  return ScreenUtilInit(
    /// UI尺寸
    designSize: const Size(375, 667),
    useInheritedMediaQuery: useInheritedMediaQuery,
    builder: builder,
  );
}

Widget initOKToast({required Widget child}) {
  return OKToast(child: child);
}

/// 初始化App
initRunApp() {
  final easyLoading = EasyLoading.init();
  Widget body = initGetMaterialApp(builder: (context, child) {
    return initOKToast(
      child: initScreenUtil(
        builder: (p0, p1) {
          return easyLoading(context, child);
        },
      ),
    );
  });
  return body;
}
