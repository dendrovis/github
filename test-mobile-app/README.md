To build apk without Expo EAS CLI, this allow local or CI without Expo online services dependency


# To generate all the Android and IOS files
npx expo prebuild

# Make sure to connect your device or to run your Emulator
npx react-native run-android --mode="release"

# If you want to sign the APK and publish to Google Play Store.
npx react-native build-android --mode=release

https://github.com/expo/eas-cli/issues/1300