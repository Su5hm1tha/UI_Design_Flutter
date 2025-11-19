# experiment10

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# 📘 Experiment 10 — Unit Testing & Debugging in Flutter

## 📌 Aim
To write **unit and widget tests** for Flutter UI components and use **Flutter's debugging tools** to identify and fix issues in the application.

---

## 🎯 Objectives
- Write widget tests to validate UI behavior.
- Test user interactions and UI rendering.
- Use Flutter debugging tools such as:
  - Flutter DevTools
  - Widget Inspector
  - Performance Overlay
  - Debug Console
- Identify and fix UI issues based on test failures and debugging output.

---

## 🛠️ Tools & Technologies
- Flutter SDK  
- Dart  
- flutter_test (built-in package)  
- Flutter DevTools  
- Android Studio / VS Code  

---

## 📂 Project Structure

---

## 🧪 Widget Testing Overview
Widget testing helps verify:  
✔ UI rendering  
✔ Button clicks  
✔ Text updates  
✔ Correct widget trees  

### ✅ Example Test Code Used
```dart
testWidgets('Button updates text on tap', (WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());

  expect(find.text('Click Me'), findsOneWidget);

  await tester.tap(find.text('Click Me'));
  await tester.pump();

  expect(find.text('Clicked'), findsOneWidget);
});
output
<img width="515" height="270" alt="Screenshot 2025-11-18 185059" src="https://github.com/user-attachments/assets/c9128fb9-5d2b-4a77-a67d-e775b03275bc" />
