# flutter_app_demo1

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## json_annotation json_serializable 处理json数据序列化

一次性生成：项目根目录运行 cmd:  flutter packages pub run build_runner build
    .dart 文件名须小写，生成 .g.dart。
持续生产：flutter packages pub run build_runner watch

## 首次启动Flutter时非常慢，如出现 Running Gradle task... ，打开 工程目录 Android/build.gradle 添加如下国内镜像地址，如阿里的
```
        maven { url 'https://maven.aliyun.com/repository/google' }
        maven { url 'https://maven.aliyun.com/repository/jcenter' }
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
```