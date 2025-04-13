
# learnify-app

A boilerplate Flutter project with:

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
├── core/                                # Core configurations shared across the app
│   ├── theme/                           # App-wide theme files (light/dark themes, text styles, etc.)
│   └── router/                          # App navigation using GoRouter
│
├── features/                            # Feature-based modules (each feature has its own clean architecture layers)
│   ├── home/                            # Home feature
│   ├── module/                          # Module feature
│   ├── pyq/                             # Previous Year Questions feature
│   ├── leaderboard/                     # Leaderboard feature
│   └── quiz/                            # Quiz feature (example below shows layered structure)
│       ├── data/                        # Handles data sources (Dio API calls, models, DTOs)
│       │   ├── models/                  # Data Transfer Objects (DTOs) / Models for API response parsing
│       │   └── repository/              # Implements domain repositories using Dio or other sources
│       │
│       ├── domain/                      # Business logic layer (pure Dart)
│       │   ├── entities/                # Domain models (used across app)
│       │   └── repository/              # Abstract repository contracts (to be implemented by data layer)
│       │
│       └── presentation/                # UI + State Management (screens, widgets, providers)
│           ├── screens/                 # UI screens for quiz (e.g., QuizListScreen, QuizDetailScreen)
│           ├── widgets/                 # Reusable widgets specific to the quiz feature
│           └── providers/               # Riverpod providers related to quiz state
│
├── providers/                           # Global Riverpod providers (e.g., theme, auth, Dio client)
│
├── presentation/                        # Shared UI components across the app (buttons, cards, layouts)
│
├── main.dart                            # Entry point of the Flutter app (initializes theme, routing, etc.)

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
