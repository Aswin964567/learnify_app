# learnify-app

A clean and scalable Flutter app for NET exam preparation with:

- 🧭 GoRouter for navigation
- 🧠 Riverpod for state management (with MVVM pattern)
- 🗂️ Clean folder structure
- 🌗 Light/Dark theme support
- 📦 FVM support for consistent Flutter version across teams
- 🧑‍💻 Shared VS Code settings for all developers
- 🧭 Gap package for spaces
- ✨ Custom extensions for theme, colorScheme, padding, and screen dimensions

---

## 📁 Project Structure

```
lib/
├── core/                                # Core configurations and global utilities
│   ├── theme/                           # App-wide themes (light/dark, colors, text styles)
│   ├── router/                          # GoRouter navigation configuration
│   └── extensions/                      # Custom Dart/Flutter extensions (e.g., on String, BuildContext)
│
├── features/                            # Feature-based structure following clean architecture
│   ├── home/                            # Home feature
│   ├── module/                          # Module feature
│   ├── pyq/                             # Previous Year Questions feature
│   ├── leaderboard/                     # Leaderboard feature
│   └── quiz/                            # Quiz feature
│       ├── data/                        # Handles external data sources (API, local storage)
│       │   ├── models/                  # DTOs / API models for parsing server response
│       │   └── repository/              # Implements domain-level abstract repositories using Dio
│       │
│       ├── domain/                      # Business logic, abstract contracts (pure Dart)
│       │   ├── entities/                # Core domain models used in the app logic
│       │   └── repository/              # Abstract repository contracts
│       │
│       └── presentation/                # UI + Riverpod state for the quiz feature
│           ├── screens/                 # UI screens (e.g., quiz list, quiz detail)
│           ├── widgets/                 # Reusable quiz-specific widgets
│           └── providers/               # Riverpod providers for quiz logic
│
├── providers/                           # Global Riverpod providers (e.g., Dio, auth, theme)
│
├── presentation/                        # Shared UI widgets/components used across multiple features
│
├── main.dart                            # App entry point – sets up theme, GoRouter, and providers

```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/AppliedCognito/learnify_app.git
cd learnify_app
```

### 2. Set Up FVM

#### 🟡 Flutter Version Info

This project uses **Flutter `3.29.2`**, as defined in `.fvm/fvm_config.json`:

```json
{
  "flutterSdkVersion": "3.29.2"
}
```

#### ✅ Set the Version with FVM

If you don’t have FVM installed:

```bash
dart pub global activate fvm
```

Then, install and use the required Flutter version:

```bash
fvm use 3.29.2
fvm install
```

### 3. Use FVM for Flutter Commands

Run all Flutter commands using FVM:

```bash
fvm flutter pub get
fvm flutter run
```

> 💡 After running once with `fvm flutter run`, **VS Code will detect the FVM version**, so you can use the built-in Run button or shortcuts (`F5`) without typing `fvm flutter run` every time.

> ⚠️ Avoid using `flutter run` directly unless your system Flutter version matches the FVM version.

## 📌 Why FVM?

**FVM (Flutter Version Management)** ensures everyone on the team uses the **same Flutter version**, avoiding version mismatch issues and environment bugs.

More help: [https://fvm.app/docs/getting_started/installation](https://fvm.app/docs/getting_started/installation)

---

## 🛠️ VS Code Setup (Recommended)

This project includes a `.vscode/settings.json` file to ensure:

- Everyone uses the same SDK path (via FVM)
- Auto formatting on save
- Code fixes automatically applied

```json
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk",
  "editor.formatOnSave": true,
  "files.eol": "\n",
  "editor.codeActionsOnSave": {
    "source.fixAll": "always"
  }
}
```

---

## 📌 Project Extensions

### ✅ Theme & ColorScheme Access

```dart
extension ThemeContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  ThemeData get theme => Theme.of(this);
}
```

### ✅ Padding Extensions

```dart
extension PaddingContext on BuildContext {
  EdgeInsets get paddingS => const EdgeInsets.all(8);
  EdgeInsets get paddingM => const EdgeInsets.all(16);
  EdgeInsets get paddingHorizontal => const EdgeInsets.symmetric(horizontal: 16);
}
```

### ✅ Usage Example in Widgets

```dart
Padding(
  padding: context.paddingHorizontal,
  child: Text('Hello'),
);
```

---

## 🎨 ColorScheme + AppColors Usage

This template uses `ColorScheme` for theme-aware UI.

```dart
class AppColors {
  static const Color primary = Color(0xFF1976D2); // Blue
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFFFFA000); // Amber
  static const Color error = Color(0xFFD32F2F); // Red
  static const Color background = Colors.white;
  static const Color onBackground = Colors.black;
}
```

Then mapped in `ThemeData.colorScheme`:

```dart
ThemeData(
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
)
```

---

## ✅ You're All Set!

You now have:

- ✅ A professional project structure
- ✅ Consistent dev environment using FVM
- ✅ Shared VS Code settings
- ✅ Git workflow to avoid conflicts
- ✅ AppColors, ColorScheme, and Padding extensions for scalability

Start building scalable, error-free apps as a team! 🚀
