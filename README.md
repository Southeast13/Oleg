MySimpleApp - Complete package for Codemagic
===========================================

What is inside:
- Full Android project (Java + XML).
- `gradlew` and `gradlew.bat` scripts (lightweight delegators).
- `gradle/wrapper/gradle-wrapper.properties` (points to Gradle 8.9).
- `codemagic.yaml` that will:
  * prefer ./gradlew
  * fall back to system 'gradle' if available on CI
  * otherwise download Gradle 8.9 automatically and use it
- This makes the repo robust for Codemagic builds without needing Android Studio locally.

How to use:
1. Unzip and push the project to your GitHub repository root.
2. In Codemagic, connect the repository and press 'Check for configuration files' or start a build.
3. The pipeline will produce a debug APK (artifact: app/build/outputs/**/*.apk).

If Codemagic shows any logs/errors, paste the failing step log here and I will fix it quickly.
