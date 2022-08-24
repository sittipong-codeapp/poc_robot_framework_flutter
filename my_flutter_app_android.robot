*** Settings ***
Documentation  Simple example using AppiumLibrary
Library  AppiumFlutterLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    flutter
${ANDROID_APP}                ${CURDIR}/my_flutter_app/build/app/outputs/flutter-apk/app.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=10}
${DEVICE_ID}                  YOUR_DEVICE_ID


*** Test Cases ***
Tap increment button twice, the counter value should be 2.
  Open Test Application
  Tap Increment Button
  Tap Increment Button
  Element Text Should Be  counter  2
  Close Application


*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=com.example.my_flutter_app  appActivity=.MainActivity
  ...  retryBackoffTime=500  deviceName=${DEVICE_ID}  udid=${DEVICE_ID}

Tap Increment Button
  Click Element  increment
