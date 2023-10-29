# flutter_firebase_chat

使用 firebase 服务的 Flutter 聊天应用程序。此聊天应用程序基于 firebase firestore

### 2023-10-27

一、[创建数据库](https://console.firebase.google.com/project/flutter-firebase-chat-fbd3c/firestore)

二、[对使用不同提供方的账号登录的用户进行身份验证和管理，而无需服务器端代码](https://console.firebase.google.com/project/flutter-firebase-chat-fbd3c/authentication/providers)

三、添加依赖 [google_sign_in](https://pub-web.flutter-io.cn/packages/google_sign_in)

1、如果您需要向后端服务器进行身份验证，您可以在 GoogleService-Info.plist 中添加 SERVER_CLIENT_ID 键值对。
`SERVER_CLIENT_ID`可以从 iOS 应用对应的[GoogleService-Info.plist](https://console.firebase.google.com/project/flutter-firebase-chat-fbd3c/settings/general/ios:com.example.firebaseChat) 文件中获取到。

2、然后将下面的 CFBundleURLTypes 属性添加到 [my_project]/ios/Runner/Info.plist 文件中。

```
<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
<!-- Google Sign-in Section -->
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleTypeRole</key>
		<string>Editor</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<!-- TODO Replace this value: -->
			<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
			<string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string>
		</array>
	</dict>
</array>
<!-- End of the Google Sign-in Section -->
```

3、作为将 GoogleService-Info.plist 添加到 Xcode 项目的替代方法，您可以在 Dart 代码中配置应用程序。 在这种情况下，请跳过步骤 3 到 7，并将 clientId 和 serverClientId 传递给 GoogleSignIn 构造函数：

```
GoogleSignIn _googleSignIn = GoogleSignIn(
  ...
  // The OAuth client id of your app. This is required.
  clientId: ...,
  // If you need to authenticate to a backend server, specify its OAuth client. This is optional.
  serverClientId: ...,
);
```

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
