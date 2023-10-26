# flutter_firebase_chat

使用 firebase 服务的 Flutter 聊天应用程序。此聊天应用程序基于 firebase firestore

### 2023-10-26

1、[在 firebase 中添加项目](https://console.firebase.google.com/)
项目名：flutter-firebase-chat

2、配置项目

```
➜ firebase_chat git:(main) ✗ flutterfire configure
⠹ Fetching available Firebase projects...
⠸ Fetching available Firebase projects...
⠼ Fetching available Firebase projects...
⠴ Fetching available Firebase projects...
⠦ Fetching available Firebase projects...
⠧ Fetching available Firebase projects...
⠇ Fetching available Firebase projects...
⠏ Fetching available Firebase projects...
i Found 3 Firebase projects.
✔ Select a Firebase project to configure your Flutter application with · flutter-firebase-chat-fbd3c (flutter-firebase-chat)
✔ Which platforms should your configuration support (use arrow keys & space to select)? · android, ios, web
i Firebase android app com.example.firebase_chat is not registered on Firebase project flutter-firebase-chat-fbd3c.
i Registered a new Firebase android app on Firebase project flutter-firebase-chat-fbd3c.
i Firebase ios app com.example.firebaseChat is not registered on Firebase project flutter-firebase-chat-fbd3c.
i Registered a new Firebase ios app on Firebase project flutter-firebase-chat-fbd3c.
i Firebase web app firebase_chat (web) is not registered on Firebase project flutter-firebase-chat-fbd3c.
i Registered a new Firebase web app on Firebase project flutter-firebase-chat-fbd3c.
? The files android/build.gradle & android/app/build.gradle will be updated to apply Firebase configuration and gradle build plugins. Do you want to continue?
✔ The files android/build.gradle & android/app/build.gradle will be updated to apply Firebase configuration and gradle build plugins. Do you want to continue? · yes

Firebase configuration file lib/firebase_options.dart generated successfully with the following Firebase apps:

Platform Firebase App Id
web 1:294954183165:web:d6bcb9709829a9b7365194
android 1:294954183165:android:718994526537dade365194
ios 1:294954183165:ios:58f7a94ef3ad8026365194

Learn more about using this file and next steps from the documentation:

> https://firebase.google.com/docs/flutter/setup
```

3、添加依赖

```
  # Firebase Core 的 Flutter 插件，可连接到多个 Firebase 应用程序。
  firebase_core: ^2.15.1
  # 适用于 Firebase Auth 的 Flutter 插件，支持使用密码、电话号码和 Google、Facebook 和 Twitter 等身份提供商进行 Android 和 iOS 身份验证。
  firebase_auth: ^4.9.0
```

4、iOS、Android 真机运行
结果：均运行 OK。
