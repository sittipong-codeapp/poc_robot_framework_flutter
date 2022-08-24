# PoC Robot Framework for Flutter Project

This project is proof-of-concept for Flutter app testing via Robot Framework.

### Contents

- Getting Start
- Requirement
- Installation Guide
- Run App
- Todo

## Getting Start

Clone repo with this command.
```shell
git clone --recurse-submodules https://github.com/sittipong-codeapp/poc_robot_framework_flutter.git
```

## Requirement

- [my_flutter_app](https://github.com/sittipong-codeapp/my_flutter_app) (git submodule)
- Flutter
- Appium
- Appium Flutter Driver
- Robot Framework
- Robot Framework Library
  - AppiumFlutterLibrary

## Installation Guide

TODO: write this section.

## Run App

0. Clone git submodules (my_flutter_app).

1. Start Appium server.
```shell
appium server --use-plugins=relaxed-caps,images
```

2. Prepare your app build.
```shell
cd my_flutter_app
flutter pub get

# Android app.
flutter build apk

# Android app for emulator.
flutter build apk --debug

cd ..
```

3. Run Robot Framework file. you can find `YOUR_DEVICE_ID` from `flutter devices`.
```shell
robot --variable DEVICE_ID:YOUR_DEVICE_ID my_flutter_app_android.robot
```

## Todo

- [x] Run test Flutter app.
- [x] Test on Android emulator.
- [x] Test on Android physical device.
- [ ] Test on iOS simulator.
- [ ] Test on iOS physical device.
- [ ] Support Apple M1 machine.
- [ ] Take screenshot.
